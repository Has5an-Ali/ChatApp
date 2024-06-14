import 'package:chatapp/Auth/LoginORregister.dart';
import 'package:flutter/material.dart';

import 'Screens/Registerpage.dart';
import 'Screens/loginPage.dart';
import 'Theme/Lightmode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Loginorregister(),
      theme: lightMode,
    );
  }
}
