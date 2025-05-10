import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:itax_easy_app/gen/assets.gen.dart';
import 'package:itax_easy_app/utils/buttons/search_cancal_button.dart';
import 'package:itax_easy_app/utils/constants/app_text.dart';
import 'package:itax_easy_app/utils/custom/custom_appbar.dart';
import 'package:itax_easy_app/utils/custom/custom_nav.dart';

import 'utils/buttons/clear_calculate_button.dart';

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
      appBar: CustomAppBar(
        title: 'AppBar',
        onBack: () => Navigator.pop(context),
        onDownload: () {},
        onShare: () {},
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "hello Pakistan",
              style: AppTextStyles.small14.copyWith(color: Colors.white),
            ),
          ),
          Center(child: SvgPicture.asset(Assets.icons.calculator)),
          Spacer(),
          SearchCancelButton(onSearchPressed: () {}, onCancelPressed: () {}),
          ClearCalculateButtons(
            onClearPressed: () {},
            onCalculatePressed: () {},
          ),
        ],
      ),

      bottomNavigationBar: CustomNavbar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
