import 'package:cat_store_ui/components/atoms/button.dart';
import 'package:cat_store_ui/components/atoms/heading1.dart';
import 'package:cat_store_ui/components/atoms/input.dart';
import 'package:cat_store_ui/components/atoms/logo.dart';
import 'package:cat_store_ui/components/pages/home_page.dart';
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
  TextEditingController email = TextEditingController();
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
              color: ColorsField.background,
              child: Text(
                'REGISTER',
                style: TextStyle(color: ColorsField.textPurple),
              ),
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
                left: MediaQuery.of(context).size.width * 1 / 8,
                right: MediaQuery.of(context).size.width * 1 / 8),
            child: Input(
              controller: email,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              prefixIcon: const Icon(
                Icons.email,
                size: 13,
              ),
              textInputType: TextInputType.emailAddress,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 1 / 8,
                right: MediaQuery.of(context).size.width * 1 / 8),
            child: Input(
              controller: password,
              iconColor: Colors.black,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              prefixIcon: const Icon(
                Icons.lock,
                size: 13,
              ),
              suffixIcon: Icon(
                Icons.visibility_off,
                size: 13,
              ),
              textInputType: TextInputType.visiblePassword,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Button(
                callback: () {
                  Map<String, dynamic> data = {
                    'username' : email.text,
                    'password': password.text
                  };
                  if(callApiFake(data) != null) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                  }
                },
                width: MediaQuery.of(context).size.width * 3 / 4 - 10,
                color: ColorsField.buttonColor,
                child: Text(
                  'Login in',
                  style:
                      TextStyle(color: Colors.white, fontSize: SizesField.text),
                )),
          ),
        ],
      ),
    );
  }
}
