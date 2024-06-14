import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/CustomTextFields.dart';
import '../Common/Mybutton.dart';

class Registerpage extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();
  void Function()? onTap;
  Registerpage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            5.heightBox,

            Text(
              "Let's create an Account for you ",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
            20.heightBox,
            //Email Textfields
            My_Textfield(
              controller: emailcontroller,
              hinttext: 'Email',
              obscureText: false,
            ),
            10.heightBox,
            //Password Textfields
            My_Textfield(
              controller: passwordcontroller,
              hinttext: 'Password',
              obscureText: true,
            ),
            10.heightBox,
            My_Textfield(
              controller: confirmpasswordcontroller,
              hinttext: 'Confirm Password',
              obscureText: true,
            ),
            30.heightBox,
            //LoginButton
            MyButton(
              onTap: () {},
              text: "Register ",
            ),
            25.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already an Account? "),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "Login now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
