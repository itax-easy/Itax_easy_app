import 'package:flutter/material.dart';

class CustomDownloadButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color; // Optional color for customization

  const CustomDownloadButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color, // Optional color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: color ?? const Color(0xFF3C7CDD), // Default blue color
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: const Icon(
                Icons.download, // Download icon
                color: Color(0xFF3C7CDD), // Default blue color
              ),
            ),
            const SizedBox(width: 6), // Spacing between icon and text
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color ?? const Color(0xFF3C7CDD), // Default blue color
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 1.50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
