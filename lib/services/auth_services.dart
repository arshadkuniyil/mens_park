import 'dart:collection';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';

abstract class AuthService {
  Future<void> signUpWithPhone(
      {required HashMap userData,
      required Function({required String responseCode}) responseCallback});

  Future<PhoneSignInStatus> signInWithPhoneOtp(String smsCode);

  Future<void> resendOtp(
      {required Function({required String responseCode}) responseCallback});

  Future<UserCredential> signInWithGoogle();

  User? getUser();

  Future<void> signOut();
}
