import 'package:cat_store_ui/components/atoms/button.dart';
import 'package:cat_store_ui/components/atoms/heading1.dart';
import 'package:cat_store_ui/components/atoms/input.dart';
import 'package:cat_store_ui/components/atoms/logo.dart';
import 'package:cat_store_ui/components/templates/signup.dart';
import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:cat_store_ui/components/tokens/size.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SignUpTemplate(
        child: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Heading1(text: 'Sign Up'),
          ),
          Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 8,
                  right: MediaQuery.of(context).size.width * 1 / 8,
                  bottom: 13),
              child: EmailInput('')),
          Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 8,
                  right: MediaQuery.of(context).size.width * 1 / 8,
                  bottom: 13),
              child: PasswordInput("")),
          Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 8,
                  right: MediaQuery.of(context).size.width * 1 / 8),
              child: PasswordInput("")),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 40),
            child: Button(
                width: MediaQuery.of(context).size.width * 3 / 4 - 10,
                child: Text(
                  'Sign Up',
                  style: contrastText,
                ),
                color: ColorsField.buttonColor),
          )
        ],
        logo: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Logo(
              img: Image.asset("lib/assets/images/logo.png", height: 90),
              shadow: false),
        ),
      ),
    );
  }
}
