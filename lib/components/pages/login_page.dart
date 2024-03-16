import 'package:cat_store_ui/components/atoms/button.dart';
import 'package:cat_store_ui/components/atoms/heading1.dart';
import 'package:cat_store_ui/components/atoms/input.dart';
import 'package:cat_store_ui/components/atoms/logo.dart';
import 'package:cat_store_ui/components/templates/login.dart';
import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginTemplate(
        logo: Logo(
            img: Image.asset("lib/assets/images/logo.png", height: 90),
            shadow: false),
        gotoSign: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Don’t have an account? REGISTER'),
            Button(
              child: Text(
                'REGISTER',
                style: TextStyle(color: ColorsField.textPurple),
              ),
              color: ColorsField.background,
            )
          ],
        ),
        child: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Heading1(text: 'Login'),
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 1 / 8),
            child: Input(
              prefixIcon: const Icon(Icons.email),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 1 / 8),
            child: Input(
              prefixIcon: const Icon(Icons.lock),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Button(
                width: MediaQuery.of(context).size.width * 3 / 4,
                color: ColorsField.buttonColor,
                child: Text(
                  'Login in',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
