import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  /// ✅ Login with Google
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Force account chooser every time
      await _googleSignIn.signOut();

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return null; // User cancelled

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (e) {
      print("🔴 Google Sign-In Error: $e");
      return null;
    }
  }

  /// ✅ Proper Logout
  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut(); // Clear Google session
      // Optional: disconnect() only if you want to revoke all permissions
      // await _googleSignIn.disconnect();
      await _auth.signOut();         // Clear Firebase session
      print("✅ User signed out successfully");
    } catch (e) {
      print("🔴 SignOut Error: $e");
    }
  }
}
