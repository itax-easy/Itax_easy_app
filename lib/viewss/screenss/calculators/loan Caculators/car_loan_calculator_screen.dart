import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/utils/custom/custom_appbar.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class CarLoanCalculatorScreen extends StatefulWidget {
  const CarLoanCalculatorScreen({super.key});

  @override
  State<CarLoanCalculatorScreen> createState() =>
      _CarLoanCalculatorScreenState();
}

class _CarLoanCalculatorScreenState extends State<CarLoanCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Car Loan Calculator'),
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
