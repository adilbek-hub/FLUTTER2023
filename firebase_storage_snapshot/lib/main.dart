import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage_snapshot/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imageName = '';
  XFile? imagePath;
  final ImagePicker _picker = ImagePicker();
  final descriptionController = TextEditingController();
  FirebaseStorage firestoreRef = FirebaseStorage.instance;
  String collectionName = "image";
bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _isLoading ? Center(child: CircularProgressIndicator(),) : Column(
            children: [
              imageName == '' ? Container() : Text('${imageName}'),
              OutlinedButton(
                  onPressed: (() {
                    imagePicker();
                  }),
                  child: Text('Select Image')),
              Expanded(
                flex: 5,
                child: TextFormField(
                  controller: descriptionController,
                  minLines: 3,
                  maxLines: 5,
                  decoration: InputDecoration(
                      labelText: 'description', border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(onPressed: (() {
                //upload function here
                _uploadImage();
              }), child: Text('Upload')),
            ],
          ),
        ),
      ),
    );
  }

  //function for upload event
  _uploadImage() {
    setState(() {
      _isLoading = true;
    });
    var uniqueKey = firestoreRef.collection(collectionName);
    String uploadFileName =
        DateTime.now().millisecondsSinceEpoch.toString() + '.jpg';
    Reference reference =
        storageRef.ref().child(collectionName).child(uploadFileName);
    UploadTask uploadTask = reference.putFile(File(imagePath!.path));
    uploadTask.snapshotEvents.listen((event) {
      print(event.bytesTransferred.toString() +
          "\t" +
          event.totalBytes.toString());
    });
    await uploadTask.whenComplete(() async{
      var uploadPath = await uploadTask.snapshot.ref.getDownloadURL();

      //now here will insert record inside database regarding URL
      if(uploadPath.isNotEmpty){
   firestoreRef.collection(collectionName).doc(uniqueKey.id).set({
        "description": descriptionController.text,
        "image": uploadPath,

      }).then((value) =>_showMessage('Record Inserted'));
      }else{
        _showMessage('Somthing while Uploading image');
      }
      setState(() {
        _isLoading = false;
      });
   
    });
  }

  _showMessage(String msd){
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msd),duration: const Duration(seconds: 3),))
  }

  imagePicker() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imagePath = image;
        imageName = image.name.toString();
        descriptionController.text = Faker().lorem.sentence();
      });
    }
  }
}
