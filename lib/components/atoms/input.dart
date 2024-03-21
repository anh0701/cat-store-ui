import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';

Widget Input(
    {required TextInputType textInputType,
    String? hintText,
    Widget? prefixIcon,
    InputBorder? border,
    Widget? suffixIcon,
    bool obscureText = true,
    Color? iconColor = Colors.blue,
    InputBorder? errorBorder,
    TextEditingController? controller, String? Function(String?)? validator}) {
  // RegExp patternEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  // RegExp patternPassword =
  //     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  // RegExp patternPhone = RegExp(r'(^(\+[0-9]{1,3}[- ]?)?\d{10,12}$)');

  String error = "";

  if (textInputType == TextInputType.visiblePassword) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsField.inputField,
          iconColor: iconColor,
          // hintStyle: const TextStyle(fontSize: 17),
          errorText: error,
          border: border,
          suffixIcon: suffixIcon,
          prefix: prefixIcon,
          // contentPadding: const EdgeInsets.all(10),
          errorBorder: errorBorder),
      keyboardType: TextInputType.visiblePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      validator: validator
    );
  } else if (textInputType == TextInputType.emailAddress) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsField.inputField,
          // hintStyle: const TextStyle(fontSize: 17),
          errorText: error,
          hintText: hintText,
          border: border,
          prefix: prefixIcon,
          errorBorder: errorBorder,
          suffixIcon: suffixIcon,
          // contentPadding: const EdgeInsets.all(10)
          ),
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator
    );
  } else if(textInputType == TextInputType.phone) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsField.inputField,
          // hintStyle: const TextStyle(fontSize: 17),
          hintText: hintText,
          border: border,
          prefix: prefixIcon,
          errorText: error,
          errorBorder: errorBorder,
          suffixIcon: suffixIcon,
          // contentPadding: const EdgeInsets.all(10)
          ),
      keyboardType: TextInputType.phone,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator
    );
  }
   else {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsField.inputField,
          // hintStyle: const TextStyle(fontSize: 17),
          hintText: hintText,
          border: border,
          prefix: prefixIcon,
          errorBorder: errorBorder,
          suffixIcon: suffixIcon,
          // contentPadding: const EdgeInsets.all(10)
          ),
      keyboardType: textInputType,
    );
  }
}
