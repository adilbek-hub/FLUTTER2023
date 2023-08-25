import 'package:cloud_firestore/cloud_firestore.dart';

class Snapshot {
  Stream<QuerySnapshot> readTodo() {
    final db = FirebaseFirestore.instance;
    return db.collection('products').snapshots();
  }
}

final sn = Snapshot();
