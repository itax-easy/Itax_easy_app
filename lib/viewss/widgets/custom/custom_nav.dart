import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:itax_easy_app/gen/assets.gen.dart';

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

          iconSize: 30, // Increase icon size
          selectedFontSize: 16, // Adjust font size for selected label
          unselectedFontSize: 12, // Adjust font size for unselected label
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.icons.home,
                color:
                    selectedIndex == 0
                        ? const Color(0xFF3C7CDD)
                        : const Color(0xFF8E8E93),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.icons.services,
                color:
                    selectedIndex == 1
                        ? const Color(0xFF3C7CDD)
                        : const Color(0xFF8E8E93),
              ),
              label: 'Tools',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.icons.blogs,
                color:
                    selectedIndex == 2
                        ? const Color(0xFF3C7CDD)
                        : const Color(0xFF8E8E93),
              ),
              label: 'Blogs',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.icons.blogs,
                color:
                    selectedIndex == 3
                        ? const Color(0xFF3C7CDD)
                        : const Color(0xFF8E8E93),
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
