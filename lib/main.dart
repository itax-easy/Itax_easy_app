import 'package:flutter/material.dart';
import 'package:itax_easy_app/views/screens/calculators/bank%20calculators/compound_interest_calculator_screen.dart';
import 'package:itax_easy_app/views/screens/calculators/bank%20calculators/simple_intrest_calculator.dart';
import 'package:itax_easy_app/views/screens/calculators/icome_tax_calculators/HRA_calculator_screen.dart';
import 'package:itax_easy_app/views/screens/calculators/icome_tax_calculators/advance_tax_calculator.dart';
import 'package:itax_easy_app/views/screens/calculators/icome_tax_calculators/capital_gain_calculator_screen.dart';
import 'package:itax_easy_app/views/screens/calculators/icome_tax_calculators/deprecication_calculator_screen.dart';
import 'package:itax_easy_app/views/screens/calculators/icome_tax_calculators/tax_calculator_screen.dart';
import 'package:itax_easy_app/views/screens/calculators/insurance%20calculators/NPS_calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CapitalGainCalculatorScreen(),
    );
  }
}
