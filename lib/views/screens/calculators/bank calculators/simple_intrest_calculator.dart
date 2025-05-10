import 'package:flutter/material.dart';

import 'package:itax_easy_app/testScreen2.dart';
import 'package:itax_easy_app/views/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/views/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/views/widgets/drop_down/select_time_dropdown.dart';
import 'package:itax_easy_app/views/widgets/inputs/CustomTextField.dart';

class SimpleInterestCalculatorScreen extends StatefulWidget {
  const SimpleInterestCalculatorScreen({super.key});

  @override
  State<SimpleInterestCalculatorScreen> createState() =>
      _SimpleInterestCalculatorScreenState();
}

class _SimpleInterestCalculatorScreenState
    extends State<SimpleInterestCalculatorScreen> {
  double? principalAmount;
  double? rateOfInterest;
  double? timePeriod;
  double? totalEarned;
  double? totalAmount;

  bool showChart = false; // To toggle the pie chart visibility

  void _calculate() {
    if (principalAmount != null &&
        rateOfInterest != null &&
        timePeriod != null) {
      setState(() {
        totalEarned = (principalAmount! * rateOfInterest! * timePeriod!) / 100;
        totalAmount = principalAmount! + totalEarned!;
        showChart = true; // Show the pie chart
      });
    }
  }

  void _clear() {
    setState(() {
      principalAmount = null;
      rateOfInterest = null;
      timePeriod = null;
      totalEarned = null;
      totalAmount = null;
      showChart = false; // Hide the pie chart
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: "Simple Interest Calulator"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text("Principal Amount", style: TextStyle(fontSize: 18)),
              ],
            ),
            CustomTextField(
              labelText: '1000',
              hintText: '1000',
              onChanged: (value) {
                principalAmount = double.tryParse(value);
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Text("Rate of Interest (P.A)", style: TextStyle(fontSize: 18)),
              ],
            ),
            CustomTextField(
              labelText: '15',
              hintText: '15',
              onChanged: (value) {
                rateOfInterest = double.tryParse(value);
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Text("Time Period", style: TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 240,
                    child: CustomTextField(
                      labelText: 'Time',
                      hintText: '1',
                      onChanged: (value) {
                        timePeriod = double.tryParse(value);
                      },
                    ),
                  ),
                  SelectTimeDropdown(
                    initialValue: 'Year',
                    onChanged: (String value) {
                      print("Dropdown changed to: $value");
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            if (showChart) ...[
              const SizedBox(height: 16),
              Center(
                child: SizedBox(
                  height: 120, // Semi-pie chart height
                  child: Testscreen2(
                    principalAmount: principalAmount ?? 0,
                    totalEarned: totalEarned ?? 0,
                  ),
                ),
              ),
            ],

            CustomClearCalculateButtons(
              onClearPressed: _clear,
              onCalculatePressed: _calculate,
            ),
          ],
        ),
      ),
    );
  }
}
