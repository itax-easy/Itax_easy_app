import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/viewss/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class DeprecicationCalculatorScreen extends StatefulWidget {
  const DeprecicationCalculatorScreen({super.key});

  @override
  State<DeprecicationCalculatorScreen> createState() =>
      _DeprecicationCalculatorScreenState();
}

class _DeprecicationCalculatorScreenState
    extends State<DeprecicationCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Deprecication Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" Purchase Price", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '1000',
              onChanged: (value) {},
            ),

            Text(" Scrap Value", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '15',
              onChanged: (value) {},
            ),

            Text(" Estimated Useful life", style: TextStyle(fontSize: 18)),
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
