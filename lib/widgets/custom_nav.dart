import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 1; // Default selected index (Tools)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        title: Text(
          _selectedIndex == 0
              ? "Home"
              : _selectedIndex == 1
              ? "Tools"
              : _selectedIndex == 2
              ? "Blogs"
              : "More",
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF3C7CDD), // Start color
                Color(0xFF43CEA2), // End color
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Selected Tab: ${_selectedIndex == 0
              ? "Home"
              : _selectedIndex == 1
              ? "Tools"
              : _selectedIndex == 2
              ? "Blogs"
              : "More"}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: Container(
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
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
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
      ),
    );
  }
}
