import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/viewss/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class CapitalGainCalculatorScreen extends StatefulWidget {
  const CapitalGainCalculatorScreen({super.key});

  @override
  State<CapitalGainCalculatorScreen> createState() =>
      _CapitalGainCalculatorScreenState();
}

class _CapitalGainCalculatorScreenState
    extends State<CapitalGainCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Capital Gain Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" Perchase Price", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: ' Price',
              hintText: '1000',
              onChanged: (value) {},
            ),

            Text(" Sale Rate", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '15',
              onChanged: (value) {},
            ),

            Text(" Total Gain", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
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
