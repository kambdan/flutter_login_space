import 'package:flutter/material.dart';
import 'package:flutter_login/presentation/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(
          backgroundColor: Color.fromRGBO(36, 11, 72, 1),
          body: LoginPage(),
        ));
  }
}
