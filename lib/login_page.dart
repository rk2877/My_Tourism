import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'State_page.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  Future<void> loginWithEmail() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // 🔹 अब main.dart में authStateChanges से StatePage खुल जाएगा
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  Future<void> loginWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) return;
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> loginWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      final OAuthCredential credential =
      FacebookAuthProvider.credential(result.accessToken!.tokenString);
      await FirebaseAuth.instance.signInWithCredential(credential);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(result.message ?? "Facebook login failed")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
            ),
            child: Column(
              children: [
                const Text("Login", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),

                TextField(controller: emailController, decoration: const InputDecoration(labelText: "Email")),

                TextField(
                  controller: passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
                ),

                ElevatedButton(
                  onPressed: loginWithEmail,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, minimumSize: const Size(double.infinity, 50)),
                  child: const Text("Login"),
                ),

                const SizedBox(height: 10),

                ElevatedButton.icon(
                  onPressed: loginWithGoogle,
                  icon: const Icon(Icons.g_mobiledata),
                  label: const Text("Sign in with Google"),
                ),

                ElevatedButton.icon(
                  onPressed: loginWithFacebook,
                  icon: const Icon(Icons.facebook),
                  label: const Text("Sign in with Facebook"),
                ),

                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignupPage())),
                  child: const Text("Don't have an account? Sign up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
