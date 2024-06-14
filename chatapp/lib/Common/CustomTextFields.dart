import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class My_Textfield extends StatelessWidget {
  final String? hinttext;
  final bool obscureText;
  final TextEditingController controller;
  My_Textfield(
      {super.key,
      required this.hinttext,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.secondary)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary)),
          hintText: hinttext,
          fillColor: Vx.gray100,
          filled: true,
        ),
      ),
    );
  }
}
