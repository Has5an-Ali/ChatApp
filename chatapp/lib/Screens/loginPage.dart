import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Common/CustomTextFields.dart';
import '../Common/Mybutton.dart';

class Loginpage extends StatelessWidget {
  // Controller
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  void Function()? onTap;
  Loginpage({super.key, required this.onTap});

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
              "Welcome back , You've been missed!",
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
            30.heightBox,
            //LoginButton
            MyButton(
              onTap: () {},
              text: "Login",
            ),
            25.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not a member? "),
                GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      "Register now",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
