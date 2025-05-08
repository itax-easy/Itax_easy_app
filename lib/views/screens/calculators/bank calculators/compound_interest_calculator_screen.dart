import 'package:flutter/material.dart';
import 'package:itax_easy_app/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/widgets/drop_down/select_time_dropdown.dart';
import 'package:itax_easy_app/widgets/inputs/CustomTextField.dart';

class CompoundInterestCalculatorScreen extends StatefulWidget {
  const CompoundInterestCalculatorScreen({super.key});

  @override
  State<CompoundInterestCalculatorScreen> createState() =>
      _CompoundInterestCalculatorScreenState();
}

class _CompoundInterestCalculatorScreenState
    extends State<CompoundInterestCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Compound Interest Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Principal Amount", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: '1000',
              hintText: '1000',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text("Rate of Interest (P.A)", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: '15',
              hintText: '15',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text(
              "Time Period",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 240,
                        child: CustomTextField(
                          labelText: 'Time',
                          hintText: '1',
                        ),
                      ),
                      SelectTimeDropdown(
                        initialValue: 'Year',
                        onChanged: (String value) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomClearCalculateButtons(
              onClearPressed: () {},
              onCalculatePressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
