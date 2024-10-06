import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verify Email",
          style: TextStyle(
            color: Color.fromRGBO(234, 216, 177, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 31, 63, 1),
      ),
      body: Column(
        children: [
          Text('Please verify your email adress'),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              print(user);

              if (user != null) {
                try {
                  await user?.sendEmailVerification();
                  print('Verification email sent');
                } catch (e) {
                  print('Failed to send verification email: $e');
                }
              } else {
                print("User is null or undefined.");
              }
            },
            child: const Text('Send email verification'),
          ),
        ],
      ),
    );
  }
}
