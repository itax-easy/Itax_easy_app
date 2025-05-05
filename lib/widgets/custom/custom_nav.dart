import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomNavbar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), // Circular border on top-left
          topRight: Radius.circular(20), // Circular border on top-right
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26, // Shadow color
            blurRadius: 10, // Blur radius
            offset: Offset(0, -4), // Offset to position shadow above navbar
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), // Circular border on top-left
          topRight: Radius.circular(20), // Circular border on top-right
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF3C7CDD),
          unselectedItemColor: const Color(0xFF8E8E93),
          iconSize: 30, // Increase icon size
          selectedFontSize: 16, // Adjust font size for selected label
          unselectedFontSize: 12, // Adjust font size for unselected label
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Tools'),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Blogs'),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'More'),
          ],
        ),
      ),
    );
  }
}
