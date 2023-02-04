import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? margin;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  const TitleWidget({
    required this.title,
    this.margin = const EdgeInsets.only(
      top: 50,
      left: 25,
    ),
    this.fontSize = 40,
    this.fontWeight = FontWeight.w700,
    this.fontStyle = FontStyle.normal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}
