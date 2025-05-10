import 'package:flutter/material.dart';
import 'package:itax_easy_app/viewss/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/utils/custom/custom_appbar.dart';
import 'package:itax_easy_app/viewss/widgets/inputs/CustomTextField.dart';

class CARGCalculatorsScreen extends StatefulWidget {
  const CARGCalculatorsScreen({super.key});

  @override
  State<CARGCalculatorsScreen> createState() => _CARGCalculatorsScreenState();
}

class _CARGCalculatorsScreenState extends State<CARGCalculatorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'CARG Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Initial Investment", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '1000',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text("Final Investment", style: TextStyle(fontSize: 18)),
            CustomTextField(
              labelText: 'Amount',
              hintText: '15',
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Text("Duration", style: TextStyle(fontSize: 18)),
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
