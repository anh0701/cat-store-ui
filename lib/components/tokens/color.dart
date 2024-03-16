import 'package:flutter/material.dart';

class ColorsField{
  static Color primary = HexColor.fromHex('#007bff');
  static Color warning = HexColor.fromHex('#ffc107');
  static Color info =  HexColor.fromHex('#17a2b8');
  static Color secondary = HexColor.fromHex('#6c757d');
  static Color success = HexColor.fromHex('#28a745');
  static Color danger = HexColor.fromHex('#dc3545');
  static Color light = HexColor.fromHex('#f8f9fa');
  static Color dark = HexColor.fromHex('#343a40');
  static Color muted = HexColor.fromHex('#6c757d');
  static Color white = HexColor.fromHex('#fff');
  static Color bShadow = Colors.black.withOpacity(0.3);
  static Color background = HexColor.fromHex('#F28F8F');
  static Color secondBackground = HexColor.fromHex('#CE8BF8');
  static Color buttonColor = HexColor.fromHex('#D58CE5');
  static Color textPurple = HexColor.fromHex('#9A39D7');
  static Color textStatus = HexColor.fromHex('#64D2A4');
  static Color iconColor = HexColor.fromHex('#CB82F8');
  static Color selectedItemColor = HexColor.fromHex('#BA68C8');
  static Color unselectedItemColor = HexColor.fromHex('#C4C4C4');
  static Color textDanger = HexColor.fromHex('#FF7171');
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}