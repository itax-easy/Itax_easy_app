import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/utils/custom/custom_appbar.dart';
import 'package:itax_easy_app/viewss/widgets/drop_down/select_time_dropdown.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class FDCalculatorScreen extends StatefulWidget {
  const FDCalculatorScreen({super.key});

  @override
  State<FDCalculatorScreen> createState() => _FDCalculatorScreenState();
}

class _FDCalculatorScreenState extends State<FDCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Fixed Deposit Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Invested ", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '1000',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text("Rate of Interest (P.A)", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '15',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text("Time Period ", style: TextStyle(fontSize: 18)),
            Row(
              children: [
                SizedBox(
                  width: 248,
                  child: CustomTextField(
                    labelText: 'Year',
                    hintText: '15',
                    onChanged: (value) {},
                  ),
                ),
                SelectTimeDropdown(
                  initialValue: 'Year',
                  onChanged: (String value) {},
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
