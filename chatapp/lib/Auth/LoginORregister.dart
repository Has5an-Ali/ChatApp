import 'package:chatapp/Screens/Registerpage.dart';
import 'package:chatapp/Screens/loginPage.dart';
import 'package:flutter/material.dart';

class Loginorregister extends StatefulWidget {
  const Loginorregister({super.key});

  @override
  State<Loginorregister> createState() => _LoginorregisterState();
}

class _LoginorregisterState extends State<Loginorregister> {
  bool showloginpage = true;

  void togglepage() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return Loginpage(
        onTap: togglepage,
      );
    } else {
      return Registerpage(
        onTap: togglepage,
      );
    }
  }
}
