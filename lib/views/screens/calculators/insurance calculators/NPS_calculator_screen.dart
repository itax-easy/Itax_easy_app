import 'package:flutter/material.dart';
import 'package:itax_easy_app/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/widgets/inputs/CustomTextField.dart';

class NpsCalculatorScreen extends StatefulWidget {
  const NpsCalculatorScreen({super.key});

  @override
  State<NpsCalculatorScreen> createState() => _NpsCalculatorScreenState();
}

class _NpsCalculatorScreenState extends State<NpsCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'NPS Calculator'),
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
