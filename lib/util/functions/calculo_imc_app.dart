double calculateIMC(double weight, double height) {
  try {
    double result = weight / (height * height);
    return double.parse(result.toStringAsFixed(2));
  } catch (e) {
    return 0.0;
  }
}
