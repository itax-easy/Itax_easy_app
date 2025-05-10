import 'package:flutter/material.dart';

class CustomClearCalculateButtons extends StatelessWidget {
  final VoidCallback onClearPressed;
  final VoidCallback onCalculatePressed;

  const CustomClearCalculateButtons({
    Key? key,
    required this.onClearPressed,
    required this.onCalculatePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 76,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Clear Button
          Expanded(
            child: GestureDetector(
              onTap: onClearPressed,
              child: Container(
                height: 44,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.50, -0.00),
                    end: Alignment(0.50, 1.00),
                    colors: [
                      Color(0xFFF96161),
                      Color(0xFFE11E1E),
                    ], // Red gradient
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Clear',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 18), // Spacing between buttons
          // Calculate Button
          Expanded(
            child: GestureDetector(
              onTap: onCalculatePressed,
              child: Container(
                height: 44,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.50, 0.11),
                    end: Alignment(0.50, 1.00),
                    colors: [
                      Color(0xFF6BFF57),
                      Color(0xFF2F7525),
                    ], // Green gradient
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Calculate',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
