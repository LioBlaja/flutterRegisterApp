import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  String text = "Login";

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(
            color: Color.fromRGBO(234, 216, 177, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 31, 63, 1),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: 'Enter your password',
              ),
            ),
            TextButton(
              onPressed: () async {
                final email = _emailController.text;
                final password = _passwordController.text;
                try {
                  final userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email, password: password);
                  // print("shydhgasyud==============>");
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/pohui/', (route) => false);
                } on FirebaseAuthException catch (e) {
                  // text = "ZAEBALA";
                  if (e.code == 'user-not-found') {
                    print("User not found");
                  } else if (e.code == 'wrong-password') {
                    print("wrong password");
                  } else if (e.code == 'invalid-credential') {
                    print("invalid credential");
                  }
                }
                // print(userCredential);
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/register/', (route) => false);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
