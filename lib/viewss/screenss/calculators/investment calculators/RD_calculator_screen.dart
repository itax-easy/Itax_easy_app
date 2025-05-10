import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/viewss/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class RDCalculatorScreen extends StatefulWidget {
  const RDCalculatorScreen({super.key});

  @override
  State<RDCalculatorScreen> createState() => _RDCalculatorScreenState();
}

class _RDCalculatorScreenState extends State<RDCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Recursive Deposit Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Monthly Investment", style: TextStyle(fontSize: 18)),
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
            Text("Time Period", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Year',
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
