import 'package:flutter/material.dart';
import 'package:itax_easy_app/controller/simple_interest_controller.dart';
import 'package:itax_easy_app/view/simple_interest_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SimpleInterestController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iTax Easy',

        home: const SimpleInterestView(), // Replace with your calculator view
      ),
    );
  }
}
