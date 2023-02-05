import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notyf {
  static show(
    BuildContext context, {
    required String message,
    required String type,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: type == 'success' ? Colors.green.shade700 : Colors.red.shade700,
        content: Text(
          message,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
