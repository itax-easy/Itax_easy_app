import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/viewss/widgets/custom/custom_toolbar.dart';
import 'package:itax_easy_app/viewss/widgets/drop_down/tax_payer_dropdown.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class AdvanceTaxCalculatorScreen extends StatefulWidget {
  const AdvanceTaxCalculatorScreen({super.key});

  @override
  State<AdvanceTaxCalculatorScreen> createState() =>
      _AdvanceTaxCalculatorScreenState();
}

class _AdvanceTaxCalculatorScreenState
    extends State<AdvanceTaxCalculatorScreen> {
  double? incomeTax;
  double? surcharge;
  double? healthAndEducationCess;
  double? taxLiability;
  double? relief;
  double? creditUtilized;
  double? assessedTax;

  void _clearFields() {
    setState(() {
      incomeTax = null;
      surcharge = null;
      healthAndEducationCess = null;
      taxLiability = null;
      relief = null;
      creditUtilized = null;
      assessedTax = null;
    });
  }

  void _calculateAdvanceTax() {
    setState(() {
      print("Calculating Advance Tax...");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbar(title: 'Advance Tax Calculator'),
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
                    onChanged: (value) {
                      incomeTax = double.tryParse(value);
                    },
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

                  const Text("Surcharge", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Surcharge',
                    onChanged: (value) {
                      surcharge = double.tryParse(value);
                    },
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    "Net Taxable Income",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Net Taxable Income',
                    onChanged: (value) {
                      surcharge = double.tryParse(value);
                    },
                  ),
                  const SizedBox(height: 16),

                  const Text("Income Tax", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Income Tax',
                    onChanged: (value) {
                      surcharge = double.tryParse(value);
                    },
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "Health and Education Cess",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Health and Education Cess',
                    onChanged: (value) {
                      healthAndEducationCess = double.tryParse(value);
                    },
                  ),
                  const SizedBox(height: 16),

                  const Text("Tax Liability", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Tax Liability',
                    onChanged: (value) {
                      taxLiability = double.tryParse(value);
                    },
                  ),
                  const SizedBox(height: 16),

                  const Text("Relief", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Relief',
                    onChanged: (value) {
                      relief = double.tryParse(value);
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "TDS/TCS/MAT( ATM ) Credit Utilized",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Credit Utilized',
                    onChanged: (value) {
                      creditUtilized = double.tryParse(value);
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(" Assessed Tax", style: TextStyle(fontSize: 18)),
                  CustomTextField(
                    labelText: 'Amount',
                    hintText: 'Enter Assessed Tax',
                    onChanged: (value) {
                      assessedTax = double.tryParse(value);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomClearCalculateButtons(
              onClearPressed: _clearFields,
              onCalculatePressed: _calculateAdvanceTax,
            ),
          ),
        ],
      ),
    );
  }
}
