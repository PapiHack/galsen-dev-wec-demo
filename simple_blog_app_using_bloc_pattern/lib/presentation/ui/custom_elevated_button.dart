import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double height;
  final Color backgroundColor;
  final double radius;
  const CustomElevatedButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.margin = const EdgeInsets.symmetric(
      horizontal: 26,
      vertical: 12,
    ),
    this.height = 65,
    this.backgroundColor = Colors.black,
    this.radius = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
