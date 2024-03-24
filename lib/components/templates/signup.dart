import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';

class SignUpTemplate extends StatelessWidget {
    Widget? logo;
    List<Widget> child;
   SignUpTemplate({super.key, required this.child, this.logo});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
         height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [ ColorsField.secondBackground, ColorsField.background],
            stops: [0, 1],
          ),
        ),
        child: Column(
          children: [
            logo ?? Container(),
            Card(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              shadowColor: ColorsField.bShadow,
              elevation: 10,
              child: Column(
                children: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}