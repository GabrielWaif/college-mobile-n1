import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/pages/HomePage.dart';
import 'package:reddit_clone/pages/UserRegisterPage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _signInWithGitHub() async {}

  Future<void> _signInWithGoogle() async {}

  TextStyle linkStyle = TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    Future<void> _executeLogin() async {
      final email = emailController.text;
      final password = passwordController.text;

      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyHomePage()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          log('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          log('Wrong password provided for that user.');
        }
      } catch (e) {
          log("aqui");
        log(e.toString());
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                width: 100,
                image: NetworkImage(
                    "https://seeklogo.com/images/R/reddit-logo-23F13F6A6A-seeklogo.com.png"),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                    text: 'New user? Sign up!',
                    style: linkStyle,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      }),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40)),
                onPressed: _executeLogin,
                child: const Text('LOG IN'),
              ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //       minimumSize: const Size.fromHeight(40),
              //       backgroundColor: Colors.green),
              //   onPressed: _signInWithGoogle,
              //   child: const Image(
              //       height: 25,
              //       image: NetworkImage(
              //           "https://imagepng.org/wp-content/uploads/2019/08/google-icon.png")),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
