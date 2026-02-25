import 'package:bmi_calculator/bmi_calculator.dart' as bmi_calculator;

void main() {
  int weight = 70;
  int height = 175;
  double bmi = weight / ((height / 100) * (height / 100));

  print("Weight: $weight kg");
  print("Height: $height cm or ${height / 100} m");
  print("BMI: $bmi");
  if (bmi < 18.5) {
    print("Underweight");
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    print("Normal weight");
  } else if (bmi >= 25 && bmi <= 29.9) {
    print("Overweight");
  } else {
    print("Obesity");
  }
}
