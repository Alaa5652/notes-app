import 'package:flutter/material.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.titleAppBar, required this.iconAppBar, this.onPressed});
  final String titleAppBar;
  final IconData iconAppBar;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleAppBar,
          style: const TextStyle(fontSize: 28),
        ),
        CustomSearchIcon(onPressed: onPressed,iconAppBar: iconAppBar),
      ],
    );
  }
}
