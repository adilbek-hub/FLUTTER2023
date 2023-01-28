import 'package:flutter/material.dart';
import 'package:for_internship/models/user_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.e});
  final UserModel e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DetailScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 60,
                backgroundImage: NetworkImage(e.avatar),
              ),
            ),
            Text("${e.firstName} ${e.lastName}"),
            Text(e.email),
          ],
        ),
      ),
    );
  }
}
