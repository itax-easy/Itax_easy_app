import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:itax_easy_app/gen/assets.gen.dart';
import 'package:itax_easy_app/viewss/widgets/custom/custom_nav.dart';

class HalfPieChart extends StatefulWidget {
  HalfPieChart({super.key});

  @override
  State<HalfPieChart> createState() => _HalfPieChartState();
}

class _HalfPieChartState extends State<HalfPieChart> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "hello Pakistan",
              style: TextStyle(fontFamily: "Poppins", fontSize: 32),
            ),
          ),
          Center(child: SvgPicture.asset(Assets.icons.calculator)),
        ],
      ),

      bottomNavigationBar: CustomNavbar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
