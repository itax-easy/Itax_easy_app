import 'package:flutter/material.dart';
import 'package:itax_easy_app/utils/constants/app_colors.dart';
import 'package:itax_easy_app/utils/constants/app_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color; // Optional color parameter
  final IconData? icon; // Optional icon parameter

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color, // Optional color
    this.icon, // Optional icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 327,
        height: 49.60,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: ShapeDecoration(
          color: color ?? const Color(0xFF3C7CDD), // Default blue color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: [
            BoxShadow(
              color: const Color(0xB2002660),
              blurRadius: 6,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 8), // Spacing between text and icon
              Icon(icon, color: Colors.white, size: 20),
            ],
          ],
        ),
      ),
    );
  }
}
