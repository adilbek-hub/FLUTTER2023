// import 'dart:io';

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:news_app/components/custom_text_field.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/image_picker_service.dart';

class GiveNews extends StatefulWidget {
  @override
  State<GiveNews> createState() => _GiveNewsState();
}

class _GiveNewsState extends State<GiveNews> {
  @override
  void initState() {
    super.initState();
    addNews();
  }

  final _title = TextEditingController();

  final _descr = TextEditingController();

  final _author = TextEditingController();
  final _image = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String imageUrl = '';
  XFile? imagePath;
  final ImagePicker _picker = ImagePicker();

  Future<void> addNews() async {
    final db = FirebaseFirestore.instance;
    final newsModel = NewsModel(
        title: _title.text,
        description: _descr.text,
        author: _author.text,
        image: _image.text);
    await db.collection('newsCollection').add(newsModel.toMapBol());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GiveNewsPage'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 30),
          children: [
            CustomTextField(
              hintext: 'title',
              controller: _title,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Электрондук почтаңызды жазыңыз';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            // NewsImageContainer(),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintext: 'description',
              controller: _descr,
              maxlines: 10,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Электрондук почтаңызды жазыңыз';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintext: 'author',
              controller: _author,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Электрондук почтаңызды жазыңыз';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ContainerImage(
              images: const <XFile>[],
            ),
            // IconButton(
            //     onPressed: (() async {
            //       ImagePicker imagePicker = ImagePicker();
            //       XFile? file = await imagePicker.pickImage(
            //           source: ImageSource.gallery);
            //       print('${file?.path} Сурот келди');
            //       if (file == null) return;
            //       String uniqueFileName =
            //           DateTime.now().microsecondsSinceEpoch.toString();
            //       Reference referenceRoot = FirebaseStorage.instance.ref();
            //       Reference referenceDirImage =
            //           referenceRoot.child('imagesForActual');
            //       Reference referenceImageToUpload =
            //           referenceDirImage.child(uniqueFileName);
            //       try {
            //         await referenceImageToUpload.putFile(File(file.path));
            //         imageUrl = await referenceImageToUpload.getDownloadURL();
            //       } catch (error) {
            //         //some error
            //       }
            //     }),
            //     icon: const Icon(Icons.camera_alt)),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onTap: () {
                CupertinoModalPopupRoute<void>(
                  builder: (BuildContext context) {
                    return CupertinoActionSheet(
                      title: const Text('Title'),
                      message: const Text('Message'),
                      actions: <CupertinoActionSheetAction>[
                        CupertinoActionSheetAction(
                          child: const Text('Action One'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: const Text('Action Two'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              hintext: 'date time',
              validator: (String string) {
                if (string == null || string.isEmpty) {
                  return "жаңылыктын убактысын коюуу шарт";
                } else {
                  return null;
                }
              },
            ),
            ElevatedButton(
                onPressed: (() async {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const CupertinoAlertDialog(
                          title: Text('Please waiting'),
                          content: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 40),
                              child: CupertinoActivityIndicator(
                                radius: 20,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                    await addNews();

                    // ignore: use_build_context_synchronously
                    Navigator.popUntil(context, (route) => route.isFirst);
                  }
                }),
                child: const Icon(Icons.publish))
          ],
        ),
      ),
    );
  }

  imagePicker() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imagePath = image;
      });
    }
  }
}

class ContainerImage extends StatefulWidget {
  ContainerImage({
    Key? key,
    required this.images,
  }) : super(key: key);
  List<XFile> images;

  @override
  State<ContainerImage> createState() => _ContainerImageState();
}

class _ContainerImageState extends State<ContainerImage> {
  final service = PickerService();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(20)),
        child: widget.images.isNotEmpty
            ? Wrap(
                children: widget.images
                    .map(
                      (e) => Expanded(
                        child: Image.file(
                          File(e.path),
                        ),
                      ),
                    )
                    .toList(),
              )
            : Center(
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  onPressed: () async {
                    final value = await service.pickImages();
                    if (value != null) {
                      widget.images = value;
                      setState(() {});
                    }
                  },
                  child: const Icon(Icons.camera_enhance),
                ),
              ));
  }
}
