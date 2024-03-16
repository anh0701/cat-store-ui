import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  final VoidCallback? callback;
  TextEditingController? controller;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  String? labelText;
  Input({super.key, this.prefixIcon, this.obscureText, this.suffixIcon, this.labelText, this.controller, this.callback});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
//    ...,other fields
      decoration: InputDecoration(
        prefixIcon: prefixIcon ?? Container(),
         border: OutlineInputBorder(
          borderSide: BorderSide.none,              // No border
          borderRadius: BorderRadius.circular(12),  // Apply corner radius
        ),
        suffixIcon: suffixIcon ?? Container(),
        labelText: labelText ?? "",
      ),
      obscureText: obscureText ?? false,
    );
  }
}
