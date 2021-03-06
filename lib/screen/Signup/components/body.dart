import 'package:flutter/material.dart';
import 'package:tutorinapp/screen/Login/login_screen.dart';
import 'package:tutorinapp/screen/Signup/components/background.dart';
import 'package:tutorinapp/screen/Signup/components/or_divider.dart';
import 'package:tutorinapp/screen/Signup/components/social_icon.dart';
import 'package:tutorinapp/components/already_have_an_account_acheck.dart';
import 'package:tutorinapp/components/rounded_button.dart';
import 'package:tutorinapp/components/rounded_input_field.dart';
import 'package:tutorinapp/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final TextEditingController emailController = new TextEditingController();
    final TextEditingController passwordController = new TextEditingController();

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              controller: emailController,
              hintText: "Correo electrónico",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Registrarme ",
              press: () {
                print(emailController.text);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
