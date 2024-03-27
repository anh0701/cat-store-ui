import 'package:cat_store_ui/components/atoms/button.dart';
import 'package:cat_store_ui/components/atoms/heading1.dart';
import 'package:cat_store_ui/components/atoms/input.dart';
import 'package:cat_store_ui/components/atoms/logo.dart';
import 'package:cat_store_ui/components/pages/login_page.dart';
import 'package:cat_store_ui/components/templates/signup.dart';
import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:cat_store_ui/components/tokens/size.dart';
import 'package:cat_store_ui/service/service_fake.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
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
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SignUpTemplate(
        logo: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Logo(
              img: Image.asset("lib/assets/images/logo.png", height: 90),
              shadow: false),
        ),
        child: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Sign Up', style: h3,),
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
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 8,
                  right: MediaQuery.of(context).size.width * 1 / 8),
              child: PasswordInput("Re-enter password...",
                  controller: repassword)),
          Container(
            margin: const EdgeInsets.only(top: 40, bottom: 40),
            child: Button(
                callback: () {
                  if (password.text == repassword.text) {
                    Map<String, dynamic> data = {
                      'result': [
                        {'username': username.text, 'password': password.text}
                      ]
                    };
                    if (addUser(data) != null) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    }
                  }
                },
                width: MediaQuery.of(context).size.width * 3 / 4 - 10,
                color: ColorsField.buttonColor,
                child: const Text(
                  'Sign Up',
                  style: whiteText,
                )),
          )
        ],
      ),
    );
  }
}
