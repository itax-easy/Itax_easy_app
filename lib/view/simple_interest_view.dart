import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/simple_interest_controller.dart';

class SimpleInterestView extends StatelessWidget {
  const SimpleInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SimpleInterestController(),
      child: Consumer<SimpleInterestController>(
        builder: (context, controller, _) {
          return Scaffold(
            appBar: AppBar(title: const Text('Simple Interest Calculator')),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: controller.principalController,
                    decoration: const InputDecoration(
                      labelText: 'Principal Amount',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: controller.rateController,
                    decoration: const InputDecoration(
                      labelText: 'Rate of Interest (P.A)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: controller.timeController,
                    decoration: const InputDecoration(labelText: 'Time Period'),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: controller.clear,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text('Clear'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: controller.calculate,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: const Text('Calculate'),
                        ),
                      ),
                    ],
                  ),
                  if (controller.showResult) ...[
                    const SizedBox(height: 20),
                    Text(
                      'Interest Earned: ₹${controller.interest.toStringAsFixed(2)}',
                    ),
                    Text(
                      'Total Amount: ₹${controller.totalAmount.toStringAsFixed(2)}',
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
