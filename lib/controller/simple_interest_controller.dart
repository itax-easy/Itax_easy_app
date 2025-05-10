import 'package:flutter/material.dart';
import '../model/simple_interest_model.dart';

class SimpleInterestController with ChangeNotifier {
  final model = SimpleInterestModel();

  final principalController = TextEditingController();
  final rateController = TextEditingController();
  final timeController = TextEditingController();

  bool showResult = false;

  void calculate() {
    model.principal = double.tryParse(principalController.text) ?? 0;
    model.rate = double.tryParse(rateController.text) ?? 0;
    model.time = double.tryParse(timeController.text) ?? 0;

    showResult = true;
    notifyListeners();
  }

  void clear() {
    principalController.clear();
    rateController.clear();
    timeController.clear();
    showResult = false;
    notifyListeners();
  }

  double get interest => model.interest;
  double get totalAmount => model.totalAmount;
}
