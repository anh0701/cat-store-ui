import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';

BottomNavigationBar bottom_navbar(
    {required List<BottomNavigationBarItem> items,
    required int currentIndex,
    void Function(int)? onTap}) {
  return BottomNavigationBar(
    items: items,
    currentIndex: currentIndex,
    onTap: onTap,
    selectedItemColor: ColorsField.selectedItemColor,
  );
}
