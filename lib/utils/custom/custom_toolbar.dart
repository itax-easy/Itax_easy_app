import 'package:flutter/material.dart';

class CustomToolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomToolbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
      title: Text(
        title,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
