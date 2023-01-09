import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textCategory extends StatelessWidget {
  final String categorytype;
  final bool isSelected;
  final VoidCallback onTap;
  textCategory(
      {required this.categorytype,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          categorytype,
          style: GoogleFonts.openSans(
            fontSize: 16,
            color: isSelected ? Colors.white : Color(0xff6d6e75),
          ),
        ),
      ),
    );
  }
}
