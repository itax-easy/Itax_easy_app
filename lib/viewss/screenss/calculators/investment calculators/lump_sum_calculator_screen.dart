import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/viewss/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class LumpSumCalculatorScreen extends StatefulWidget {
  const LumpSumCalculatorScreen({super.key});

  @override
  State<LumpSumCalculatorScreen> createState() =>
      _LumpSumCalculatorScreenState();
}

class _LumpSumCalculatorScreenState extends State<LumpSumCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Lump Sum Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Investment", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '1000',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text("Expected Return (P.A)", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Return Amount',
              hintText: '15',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text("Your Age", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Age',
              hintText: '15',
              onChanged: (value) {},
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
