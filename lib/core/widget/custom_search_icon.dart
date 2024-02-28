import 'package:flutter/material.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.iconAppBar, this.onPressed});
  final IconData iconAppBar;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration:  BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(16))
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(iconAppBar,size: 28,)) ,
    );
  }
}
