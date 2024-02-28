import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.holdColor, required this.color});
  final bool holdColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return holdColor
        ? CircleAvatar(
      radius: 34,
      backgroundColor: color,
    )
        : CircleAvatar(
      radius: 24,
      backgroundColor: color,
    );
  }
}
