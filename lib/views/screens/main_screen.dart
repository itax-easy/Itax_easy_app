import 'package:flutter/material.dart';
import 'package:itax_easy_app/views/screens/blogs_screen.dart';
import 'package:itax_easy_app/views/screens/home_screen.dart';
import 'package:itax_easy_app/views/screens/more_screen.dart';
import 'package:itax_easy_app/views/screens/tools_screen.dart';

import 'package:itax_easy_app/widgets/custom/custom_nav.dart';
import 'package:itax_easy_app/widgets/custom/custom_toolbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Default selected index (Home)

  // List of screens for each tab
  final List<Widget> _screens = [
    const HomeScreen(),
    const ToolsScreen(),
    const BlogsScreen(),
    const MoreScreen(),
  ];

  // List of titles for the AppBar
  final List<String> _titles = ["Home", "Tools", "Blogs", "More"];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(
        title: _titles[_selectedIndex], // Dynamically set the title
      ),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: CustomNavbar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
