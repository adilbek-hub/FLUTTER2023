import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      _image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pick an Image"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              _image != null
                  ? Image.file(
                      _image!,
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    )
                  : Image.network("https://picsum.photos/250?image=9"),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                data: 'Pick From Gallery',
                onPressed: getImage,
                icon: Icons.image_outlined,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                data: 'Pick From Camera',
                onPressed: () {},
                icon: Icons.camera_enhance,
              ),
              const Text("button"),
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.icon, required this.data, required this.onPressed});
  final IconData? icon;
  final String data;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20,
            ),
            Text(data),
          ],
        ),
      ),
    );
  }
}
