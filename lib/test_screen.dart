import 'package:flutter/material.dart';
import 'package:itax_easy_app/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/widgets/buttons/custom_sreach_cancal_button.dart';
import 'package:itax_easy_app/widgets/custom_nav.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Text Field')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomSearchCancelButtons(
              onSearchPressed: () {
                print('Search Button Pressed!');
              },
              onCancelPressed: () {
                print('Cancel Button Pressed!');
              },
            ),
            CustomClearCalculateButtons(
              onClearPressed: () {
                print('Clear Button Pressed!');
              },
              onCalculatePressed: () {
                print('Calculate Button Pressed!');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
