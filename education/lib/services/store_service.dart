import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/information.dart';

class StoreService {
  final db = FirebaseFirestore.instance;
  Future<void> informationSave(Information information) async {
    await db.collection("images").add(information.toMap());
  }
}
