class SimpleInterestModel {
  double principal = 0;
  double rate = 0;
  double time = 0;

  double get interest => (principal * rate * time) / 100;
  double get totalAmount => principal + interest;
}
