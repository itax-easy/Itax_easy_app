import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:itax_easy_app/gen/assets.gen.dart';

class HalfPieChart extends StatelessWidget {
  const HalfPieChart({super.key});

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
    );
  }
}
