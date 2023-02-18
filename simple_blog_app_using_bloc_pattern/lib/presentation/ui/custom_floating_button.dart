import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final Widget child;
  const CustomFloatingButton({
    required this.onPressed,
    required this.child,
    this.backgroundColor = Colors.black,
    this.foregroundColor = Colors.black,
    this.elevation = 10.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: elevation,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      child: child,
    );
  }
}
