import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const TextIcon({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: GoogleFonts.nunito(fontSize: 18, color: const Color(0xFF1A191E)),),
        Icon(icon,color: Color(0xFF6789B1),)
      ],
    );
  }
}