import 'package:flutter/material.dart';
import 'package:login_page_with_for_loop/home/login_page.dart';
import 'package:login_page_with_for_loop/model.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Group: ${student.group.toString()}'),
                    Text('${student.id}. Name'),
                    Text(
                      student.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      student.surName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ClipOval(
                  // clipper: MyClip(),
                  child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset('${student.image}', fit: BoxFit.fill)),
                ),
              ],
            ),
            Text('Age: ${student.age.toString()}'),
            Text('Address: ${student.address}'),
            Text('Email: ${student.email}'),
            Text('Gender: ${student.gender}'),
            Text('Marriage: ${student.marriage}'),
            Text('Phone: ${student.phone}'),
          ],
        ),
      ),
    );
  }
}

// class MyClip extends CustomClipper<Rect> {
//   Rect getClip(Size size) {
//     return Rect.fromLTWH(0, 0, 100, 100);
//   }

//   bool shouldReclip(oldClipper) {
//     return true;
//   }
// }
void male() {}
