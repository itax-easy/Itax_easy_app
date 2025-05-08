import 'package:flutter/material.dart';
import 'package:itax_easy_app/views/screens/calculators/bank%20calculators/simple_intrest_calculator.dart';
import 'package:itax_easy_app/widgets/custom/calculator_card.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({
    super.key,
    required Null Function(dynamic calculator) onCalculatorSelected,
  });

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {
  String _selectedCalculator = 'Tools'; // Default app bar title

  void _showBottomSheet(
    BuildContext context,
    String title,
    List<Map<String, dynamic>> items,
  ) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 48,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ...items.map((item) {
                return Card(
                  elevation: 4, // Adds shadow to the card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: ListTile(
                    title: Text(item['title']),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.pop(context); // Close the bottom sheet
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => SimpleInterestCalculatorScreen(),
                        ),
                      );
                    },
                  ),
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Number of items per row
          crossAxisSpacing: 16, // Spacing between columns
          mainAxisSpacing: 16, // Spacing between rows
          children: [
            //bank Calculator
            CalculatorCard(
              icon: Icons.account_balance,
              iconColor: Colors.indigo,
              title: 'Bank\nCalculator',
              onTap: () {
                _showBottomSheet(context, 'Bank Calculators', [
                  {'title': 'Simple Interest Calculator'},
                  {'title': 'Compound Interest Calculator'},
                ]);
              },
            ),

            //income tax Calculator
            CalculatorCard(
              icon: Icons.percent,
              iconColor: Colors.pink,
              title: 'Income Tax\nCalculator',
              onTap: () {
                _showBottomSheet(context, 'Income Tax Calculators', [
                  {'title': 'HRA Calculator'},
                  {'title': 'Depreciation Calculator'},
                  {'title': 'Advance Tax Calculator (Old-Regime)'},
                  {'title': 'Tax Calculator'},
                  {'title': 'Capital Gain Calculator'},
                ]);
              },
            ),
            // GST Calculator
            CalculatorCard(
              icon: Icons.receipt_long,
              iconColor: Colors.red,
              title: 'GST\nCalculator',
              onTap: () {
                _showBottomSheet(context, 'GST Calculators', [
                  {'title': 'GST Input Calculator'},
                  {'title': 'GST Output Calculator'},
                ]);
              },
            ),
            // Investment Calculator
            CalculatorCard(
              icon: Icons.show_chart,
              iconColor: Colors.green,
              title: 'Investment\nCalculator',
              onTap: () {
                _showBottomSheet(context, 'Investment Calculators', [
                  {'title': 'Post Office MIS'},
                  {'title': 'CAGR Calculator'},
                  {'title': 'RD Calculator'},
                  {'title': 'FD Calculator'},
                  {'title': 'Lump Sum Calculator'},
                  {'title': 'SIP Calculator'},
                ]);
              },
            ),
            // Loan Calculator
            CalculatorCard(
              icon: Icons.attach_money,
              iconColor: Colors.teal,
              title: 'Loan\nCalculator',
              onTap: () {
                _showBottomSheet(context, 'Loan Calculators', [
                  {'title': 'Business Loan Calculator'},
                  {'title': 'Car Loan Calculator'},
                  {'title': 'Loan Against Property'},
                  {'title': 'Home Loan Calculator'},
                  {'title': 'Personal Loan Calculator'},
                ]);
              },
            ),
            // Insurence Calculator
            CalculatorCard(
              icon: Icons.table_chart,
              iconColor: Colors.orange,
              title: 'Insurance\nCalculator',
              onTap: () {
                _showBottomSheet(context, 'Insurance Calculators', [
                  {'title': 'NPS Calculator'},
                ]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
