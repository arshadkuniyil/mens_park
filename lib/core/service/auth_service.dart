import 'dart:collection';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;
  static User? user = auth.currentUser;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
 
  // int? statusCode;
  // String? msg;

  Future<void> signUp(HashMap userValues) async {
    String email = userValues['email'];
    String password = userValues['password'];

    try {
      user = await auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => value.user);
      await auth.signInWithEmailAndPassword(email: email, password: password);
      await user!.sendEmailVerification();

      
    } catch (e) {
      log("on Catch: $e");
    }
  }

  addDetails() async {
    await firestore.collection('users').doc(user!.uid).set({
      'fullName': "arshad",
      'mobileNumber': "8086674639",
      'userId': user!.uid
    });
  }
}
