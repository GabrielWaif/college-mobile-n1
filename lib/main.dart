import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/pages/LoginPage.dart';
import 'package:reddit_clone/repositories/posts_repository.dart';

import 'lib/colors.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Reddit Clone',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: orangeColor,
              background: const Color.fromARGB(249, 249, 250, 255)),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider(
            create: (context) => PostsRepositor(),
            child: MaterialApp(
              home: LoginPage(),
            )));
  }
}
