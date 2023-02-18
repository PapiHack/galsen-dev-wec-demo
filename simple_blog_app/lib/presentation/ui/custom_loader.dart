import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  final Color? color;
  final Color? backgroundColor;
  const CustomLoader({
    Key? key,
    this.color = Colors.black,
    this.backgroundColor = Colors.white70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
