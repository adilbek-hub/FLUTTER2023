import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../model/information.dart';
import '../services/image_picker_service.dart';
import '../services/storage_service.dart';
import '../services/store_service.dart';

class Administrator extends StatefulWidget {
  const Administrator({super.key});

  @override
  State<Administrator> createState() => _AdministratorState();
}

class _AdministratorState extends State<Administrator> {
  List<XFile> images = [];
  final service = ImagePickerService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        centerTitle: true,
        title: const Text('Screen2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(),
              ),
              child: images.isNotEmpty
                  ? GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                      ),
                      children: images
                          .map(
                            (e) => ItemCard(
                              file: File(e.path),
                            ),
                          )
                          .toList(),
                    )
                  : IconButton(
                      onPressed: () async {
                        final value = await service.pickImages();
                        if (value != null) {
                          images = value;
                          setState(() {});
                        }
                      },
                      icon: const Icon(
                        Icons.camera_enhance,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () async {
                final urls = await StorageService().uploadImages(images);
                final information = Information(
                  image: urls,
                );
                await StoreService().informationSave(information);
              },
              icon: const Icon(Icons.publish),
              label: const Text('Маалыматты жөнөтүү'),
            ),
          ],
        ),
      ),
    );
  }
}

class Jurok extends StatefulWidget {
  const Jurok({super.key});

  @override
  State<Jurok> createState() => _JurokState();
}

class _JurokState extends State<Jurok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Screen2'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.file,
  });
  final File file;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.file(
          file,
        ),
      ),
    );
  }
}
