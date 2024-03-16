import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Widget child;
  Color color;
  double? width;
  final VoidCallback? callback;
   Button({super.key, this.callback, required this.child, required this.color, this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          onPressed: callback,
          child: child,
        ),
      ),
    );
  }
}
