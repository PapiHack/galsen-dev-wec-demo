import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_blog_app_using_bloc_pattern/config/config.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String fieldName;
  final bool isRequired;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? margin;
  final int? maxLines;
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.fieldName,
    this.isRequired = true,
    this.keyboardType,
    this.margin,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(
        horizontal: 26,
        vertical: 12,
      ),
      child: TextFormField(
        validator: (value) {
          if (isRequired) {
            if (value == null || value.isEmpty) {
              return 'Le champ "$fieldName" est obligatoire.';
            }
          }
          return null;
        },
        controller: controller,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.justify,
        maxLines: maxLines,
        cursorColor: Colors.black,
        style: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: AppColors.strokeInputActif,
              width: 1.5,
            ),
          ),
          hintStyle: GoogleFonts.inter(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            color: AppColors.background,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
