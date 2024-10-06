import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:long_video_register_app/firebase_options.dart';
import 'package:long_video_register_app/views/login_view.dart';
import 'package:long_video_register_app/views/pohui_view.dart';
import 'package:long_video_register_app/views/register_view.dart';
import 'package:long_video_register_app/views/verify_email.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegisterView(),
        '/pohui/': (context) => const PohuiView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          // case ConnectionState.none:
          //   // TODO: Handle this case.
          // case ConnectionState.waiting:
          //   // TODO: Handle this case.
          // case ConnectionState.active:
          //   // TODO: Handle this case.
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            print(user);
            // if (user != null) {
            //   if (user.emailVerified) {
            //     print("Email is verified");
            //   } else {
            //     return const VerifyEmailView();
            //   }
            // } else {
            //   return const LoginView();
            // }
            // return Text('Email is verified');
            return LoginView();
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
