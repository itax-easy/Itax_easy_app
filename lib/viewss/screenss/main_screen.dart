import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/screenss/blogs_screen.dart';
import 'package:itax_easy_app/viewss/screenss/home_screen.dart';
import 'package:itax_easy_app/viewss/screenss/more_screen.dart';
import 'package:itax_easy_app/viewss/screenss/tools_screen.dart';
import 'package:itax_easy_app/utils/custom/custom_nav.dart';
import 'package:itax_easy_app/utils/custom/custom_toolbar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void _onItemTapped(int index) {
    if (_selectedIndex == index) {
      // Pop to first route if user taps the same tab again
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() => _selectedIndex = index);
    }
  }

  Widget _buildOffstageNavigator(int index, Widget screen) {
    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(builder: (context) => screen);
        },
      ),
    );
  }

  final List<String> _titles = ["Home", "Tools", "Blogs", "More"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: _titles[_selectedIndex]),
      body: Stack(
        children: [
          _buildOffstageNavigator(0, const HomeScreen()),
          _buildOffstageNavigator(
            1,
            ToolsScreen(
              onCalculatorSelected: (calculator) {
                print('Calculator selected: $calculator');
              },
            ),
          ),
          _buildOffstageNavigator(2, const BlogsScreen()),
          _buildOffstageNavigator(3, const MoreScreen()),
        ],
      ),
      bottomNavigationBar: CustomNavbar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
