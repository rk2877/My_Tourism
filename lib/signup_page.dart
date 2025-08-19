import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  Future<void> signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // 🔹 authStateChanges ऑटो StatePage पर ले जाएगा
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
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
                const Text("Sign Up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
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

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: signup,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: const Size(double.infinity, 50)),
                  child: const Text("Sign Up"),
                ),

                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Already have an account? Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
