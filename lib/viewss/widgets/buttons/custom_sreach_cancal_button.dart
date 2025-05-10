import 'package:flutter/material.dart';

class CustomSearchCancelButtons extends StatelessWidget {
  final VoidCallback onSearchPressed;
  final VoidCallback onCancelPressed;

  const CustomSearchCancelButtons({
    Key? key,
    required this.onSearchPressed,
    required this.onCancelPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 73,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Cancel Button
          Expanded(
            child: GestureDetector(
              onTap: onCancelPressed,
              child: Container(
                height: 44,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFF3C7CDD), // Primary color
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF373844), // Grey color
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
          const SizedBox(width: 20), // Spacing between buttons
          // Search Button
          Expanded(
            child: GestureDetector(
              onTap: onSearchPressed,
              child: Container(
                height: 44,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3C7CDD), // Primary color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Search',
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
