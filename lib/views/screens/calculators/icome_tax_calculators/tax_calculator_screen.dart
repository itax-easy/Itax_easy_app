import 'package:flutter/material.dart';
import 'package:itax_easy_app/views/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/views/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/views/widgets/drop_down/select_status_dropdown.dart';
import 'package:itax_easy_app/views/widgets/drop_down/tax_payer_dropdown.dart';
import 'package:itax_easy_app/views/widgets/inputs/CustomTextField.dart';

class TaxCalculatorScreen extends StatefulWidget {
  const TaxCalculatorScreen({super.key});

  @override
  State<TaxCalculatorScreen> createState() => _TaxCalculatorScreenState();
}

class _TaxCalculatorScreenState extends State<TaxCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Tax Calculator'),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("PAN NO. ", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'ED344TY8',
                    hintText: 'Enter Income Tax',
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 16),

                  const Text("Tax Payers", style: TextStyle(fontSize: 18)),
                  TaxPayerdropdown(
                    height: 50,
                    width: 376,
                    initialValue: 'Select',
                    onChanged: (String value) {},
                  ),
                  const SizedBox(height: 16),

                  const Text("Status", style: TextStyle(fontSize: 18)),
                  SelectStatusdropdown(
                    height: 50,
                    width: 376,
                    initialValue: 'Select',
                    onChanged: (String value) {},
                  ),
                  const SizedBox(height: 16),

                  const Text(" First Name ", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'First Name',
                    hintText: ' Muhammad',
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 16),

                  const Text(" Last Name", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'Last Name',
                    hintText: ' Shoaib',
                    onChanged: (value) {},
                  ),

                  const SizedBox(height: 16),

                  const SizedBox(height: 16),
                  const Text(
                    " Assessment Year",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomTextField(
                    labelText: 'Assessment Year',
                    hintText: 'Enter Assessed Year',
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomClearCalculateButtons(
              onClearPressed: () {},
              onCalculatePressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
