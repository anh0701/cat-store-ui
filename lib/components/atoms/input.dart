import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:cat_store_ui/components/tokens/size.dart';
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


TextField TextInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted, controller}) {
  return TextField(
    controller: controller,
    onTap: onTap,
    onChanged: onChanged,
    onEditingComplete: onEditingComplete,
    onSubmitted: onSubmitted,
    cursorColor: ColorsField.primary,
    style: inputFieldTextStyle,
    decoration: InputDecoration(
      filled: true,
      fillColor: ColorsField.inputField,
        hintText: hintText,
        hintStyle: inputFieldHintTextStyle,
        // focusedBorder: inputFieldFocusedBorderStyle,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: inputFieldNoBorderStyle),
  );
}

TextField EmailInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted, controller}) {
  return TextField(
    controller: controller,
    onTap: onTap,
    onChanged: onChanged,
    onEditingComplete: onEditingComplete,
    onSubmitted: onSubmitted,
    keyboardType: TextInputType.emailAddress,
    cursorColor: ColorsField.primary,
    style: inputFieldTextStyle,
    decoration: InputDecoration(
      filled: true,
      fillColor: ColorsField.inputField,
        hintText: hintText,
        hintStyle: inputFieldHintTextStyle,
        // focusedBorder: inputFieldFocusedBorderStyle,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: inputFieldNoBorderStyle),
  );
}


TextField PasswordInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted, controller}) {
  return TextField(
    controller: controller,
    onTap: onTap,
    onChanged: onChanged,
    onEditingComplete: onEditingComplete,
    onSubmitted: onSubmitted,
    obscureText: true,
    cursorColor: ColorsField.primary,
    style: inputFieldHintPaswordTextStyle,
    decoration: InputDecoration(
      filled: true,
      fillColor: ColorsField.inputField,
        hintText: hintText,
        hintStyle: inputFieldHintPaswordTextStyle,
        // focusedBorder: inputFieldFocusedBorderStyle,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: inputFieldNoBorderStyle),
  );
}

