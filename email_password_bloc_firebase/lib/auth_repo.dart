import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  // registrasia metodu
  Future<void> signUp({required String email, required String password}) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak -password') {
        throw Exception('This Password is too weak');
      } else if (e.code == 'email-already-on-use') {
        throw Exception('The accound already exists for that email');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
