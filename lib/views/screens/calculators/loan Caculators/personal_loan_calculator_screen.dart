import 'package:flutter/material.dart';
import 'package:itax_easy_app/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/widgets/custom/custom_toolbar.dart';

import 'package:itax_easy_app/widgets/inputs/CustomTextField.dart';

class PersonalLoanCalculatorScreen extends StatefulWidget {
  const PersonalLoanCalculatorScreen({super.key});

  @override
  State<PersonalLoanCalculatorScreen> createState() =>
      _PersonalLoanCalculatorScreenState();
}

class _PersonalLoanCalculatorScreenState
    extends State<PersonalLoanCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Personal Loan Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Loan Amount", style: TextStyle(fontSize: 18)),
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
            Text("Loan Tenure", style: TextStyle(fontSize: 18)),
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
