import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
              ElevatedButton(onPressed: (() {}), child: Text('Upload')),
            ],
          ),
        ),
      ),
    );
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
