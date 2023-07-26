import 'package:firebase_auth/firebase_auth.dart';
import 'package:flesh_chat_j/services/user_manager.dart';

class HomeServices {
  static Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    await userManager.removeUid();
  }

  static Future<void> delete() async {
    await FirebaseAuth.instance.currentUser!.delete();
    await userManager.removeUid();
  }
}
