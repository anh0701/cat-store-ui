import 'package:cat_store_ui/components/tokens/size.dart';
import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  String text;
  Heading1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: SizesField.h1, fontWeight: FontWeight.bold),
    );
  }
}
