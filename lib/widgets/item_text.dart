import 'package:flutter/material.dart';
import 'package:food_delivery_ui/text_style.dart';

class ItemText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onPressed;

  const ItemText({this.isSelected, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: AnimatedDefaultTextStyle(
          child: Text(text),
          style: isSelected ? selectedItemStyle : defaultItemStyle,
          duration: const Duration(milliseconds: 500)),
    );
  }
}
