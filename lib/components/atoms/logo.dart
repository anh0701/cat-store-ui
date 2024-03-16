import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Widget img;
  bool shadow;
  Logo({super.key, required this.img, required this.shadow});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140.0,
        width: 140.0,
        child: Center(
          child: ClipOval(
            // child: Icon(Icons.mark_chat_read_outlined, size: 128,), //put your logo here
            child: img,
          ),
        ),
        decoration: shadow
            ? BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsField.white,
                boxShadow: [
                    BoxShadow(
                      color: ColorsField.bShadow,
                      blurRadius: 2.0,
                      offset: Offset(5.0, 3.0),
                      spreadRadius: 2.0,
                    )
                  ])
            : const BoxDecoration());
  }
}
