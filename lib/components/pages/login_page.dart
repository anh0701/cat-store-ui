import 'package:cat_store_ui/components/atoms/button.dart';
import 'package:cat_store_ui/components/atoms/heading1.dart';
import 'package:cat_store_ui/components/atoms/input.dart';
import 'package:cat_store_ui/components/atoms/logo.dart';
import 'package:cat_store_ui/components/pages/signup_page.dart';
import 'package:cat_store_ui/components/pages/welcome_page.dart';
import 'package:cat_store_ui/components/templates/login.dart';
import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:cat_store_ui/components/tokens/size.dart';
import 'package:cat_store_ui/service/service_fake.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginTemplate(
        logo: Container(
          // margin: const EdgeInsets.only(top: 50),
          child: Logo(
              img: Image.asset("lib/assets/images/logo.png", height: 90),
              shadow: false),
        ),
        gotoSign: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Don’t have an account? REGISTER'),
            Button(
              callback: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()));
              },
              color: ColorsField.background,
              child: Text(
                'REGISTER',
                style: TextStyle(color: ColorsField.textPurple),
              ),
            )
          ],
        ),
        child: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Login', style: h3,),
          ),
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 8,
                  right: MediaQuery.of(context).size.width * 1 / 8,
                  bottom: 13),
              child: EmailInput('Enter username...', controller: username)),
          Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 8,
                  right: MediaQuery.of(context).size.width * 1 / 8,
                  bottom: 13),
              child: PasswordInput("Enter password...", controller: password)),
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: Button(
                callback: () {
                  Map<String, dynamic> data = {
                    'username': username.text,
                    'password': password.text
                  };
                  if (getUser(data) != null) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomePage()));
                  }
                },
                width: MediaQuery.of(context).size.width * 3 / 4 - 10,
                color: ColorsField.buttonColor,
                child: const Text(
                  'Login in',
                  style: whiteText,
                )),
          ),
        ],
      ),
    );
  }
}
