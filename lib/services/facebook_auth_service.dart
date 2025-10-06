import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      final credential = FacebookAuthProvider.credential(
        result.accessToken!.tokenString, // ✅ flutter_facebook_auth: ^7.1.2
      );

      return await _auth.signInWithCredential(credential);
    } else {
      throw Exception(result.message ?? "Facebook login failed");
    }
  }
}
