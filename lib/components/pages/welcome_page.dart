// Easily buy items for your pets
import 'package:cat_store_ui/components/atoms/logo.dart';
import 'package:cat_store_ui/components/pages/home_page.dart';
import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<PageViewModel> pages = [
    PageViewModel(
        decoration: PageDecoration(
            boxDecoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [ColorsField.secondBackground, ColorsField.background],
            stops: [0, 1],
          ),
        )),
        titleWidget: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Logo(
              img: Image.asset("lib/assets/images/logo.png", height: 90),
              shadow: false),
        ),
        body: 'Easily buy items for your pets'),
    PageViewModel(
       decoration: PageDecoration(
            boxDecoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [ColorsField.secondBackground, ColorsField.background],
            stops: [0, 1],
          ),
        )),
        titleWidget: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Logo(
              img: Image.asset("lib/assets/images/logo.png", height: 90),
              shadow: false),
        ),
        body: 'Easily buy items for your pets'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Text("Next"),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w700)),
        onDone: () {
          // On Done button pressed
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        onSkip: () {
          // On Skip button pressed
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
      ),
    );
  }
}
