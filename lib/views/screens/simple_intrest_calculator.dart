import 'package:flutter/material.dart';
import 'package:itax_easy_app/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/widgets/drop_down/select_time_dropdown.dart';
import 'package:itax_easy_app/widgets/inputs/CustomTextField.dart';

class SimpleInterestCalculatorScreen extends StatelessWidget {
  const SimpleInterestCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Principal Amount", style: TextStyle(fontSize: 18)),
              ],
            ),
            CustomTextField(labelText: '1000', hintText: '1000'),
            const SizedBox(height: 16), // Add spacing between sections
            Row(
              children: [
                Text("Rate of Interest (P.A)", style: TextStyle(fontSize: 18)),
              ],
            ),
            CustomTextField(
              labelText: '15',
              hintText: '15',
              icon: Icons.percent,
            ),
            const SizedBox(height: 16), // Add spacing between sections
            Row(
              children: [Text("Time Period", style: TextStyle(fontSize: 18))],
            ),
            const SizedBox(height: 16), // Add spacing between sections
            SizedBox(
              height: 60, // Fixed height to prevent layout shift
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 240,
                    child: CustomTextField(labelText: 'Time', hintText: '1'),
                  ),
                  SelectTimeDropdown(
                    initialValue: 'Year',
                    onChanged: (String value) {
                      // Handle dropdown value change
                      print("Dropdown changed to: $value");
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomClearCalculateButtons(
              onClearPressed: () {
                // Add logic to clear fields
                print("Clear button pressed");
              },
              onCalculatePressed: () {
                // Add logic to calculate simple interest
                print("Calculate button pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
