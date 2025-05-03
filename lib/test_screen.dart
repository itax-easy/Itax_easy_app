import 'package:flutter/material.dart';
import 'package:itax_easy_app/widgets/inputs/CustomTextField.dart';
import 'package:itax_easy_app/widgets/inputs/custom_tick_box.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Text Field')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(labelText: 'Enter PAN Number', hintText: 'Enter'),

            CustomTickBox(
              initialValue: false,
              onChanged: (value) {
                print('Tick Box Value: $value');
              },
            ),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: ShapeDecoration(
                color: const Color(0xFF3C7CDD) /* Primary */,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0xB2002660),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 6,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Text('he'),
                  ),
                  Text(
                    'Create Invoice',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
