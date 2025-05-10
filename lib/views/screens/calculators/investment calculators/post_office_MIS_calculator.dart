import 'package:flutter/material.dart';
import 'package:itax_easy_app/views/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/views/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/views/widgets/inputs/CustomTextField.dart';

class PostOfficeMisCalculatorScreen extends StatefulWidget {
  const PostOfficeMisCalculatorScreen({super.key});

  @override
  State<PostOfficeMisCalculatorScreen> createState() =>
      _PostOfficeMisCalculatorScreenState();
}

class _PostOfficeMisCalculatorScreenState
    extends State<PostOfficeMisCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(
        title: 'Post Office MIS (Monthly \n Income Schedule) Calculator',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Investment Amount", style: TextStyle(fontSize: 18)),
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
