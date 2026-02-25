**Name:** *Alyfa Zahra Qurrota Aini*  
**NIM:** *244107060057*  
**Major:** *D-IV Business Information System*  
**Class:** *2G* 

# Flutter Practicum Report – Week 01
  This document is a comprehensive report for Week 02 practicum, covering variable declarations, data types, and various operators in Dart through multiple study cases and practical assignments.

---

## 1. Study Cases Implementation
I have implemented 5 different study cases to practice the fundamental logic of Dart:
1. **Temperature Conversion:** Converting Celsius to Fahrenheit and Kelvin.
2. **Simple Calculator:** Performing basic arithmetic operations (+, -, *, /).
3. **User Data Validation:** Using boolean logic to verify user criteria (True/False).
4. **Discount Calculation:** Determining the final price after applying a percentage discount.
5. **Graduation Status:** Using conditional IF-ELSE to determine student status based on grades.

---

## 2. Practical Assignments
### Task 1: BMI Calculator
A program that calculates Body Mass Index (BMI) by taking weight (kg) and height (m) as input, then categorizing the result (Underweight, Normal, Overweight).

### Task 2: Currency Converter
A conversion tool that supports at least 3 currencies (e.g., IDR to USD, EUR, and SGD) using fixed exchange rates.

### Task 3: All-in-One Operator Console
A single console application that demonstrates the implementation of all operators:
* **Arithmetic:** Addition, Subtraction, Multiplication, Division.
* **Relational:** Comparing values (Equal, Not Equal, Greater Than).
* **Logical:** Combining conditions using AND (&&), OR (||), and NOT (!).
* **Assignment:** Efficiently updating variables using +=, -=, etc.

---

## 3. Additional Challenge (Multi-Unit Converter)
Based on the specific challenge provided (image attached in the assignment), I developed an advanced converter with:
* **Categories:** Length, Mass, Volume, and Temperature.
* **Map Structure:** Implementing `Map<String, double>` to store conversion factors for cleaner code.
* **Validation:** Ensuring that physical quantities (Mass, Volume, Length) do not accept negative values.
* **Unit Variety:** Providing at least 5 different units for each category.

---

## Result Analysis
* **Data Organization:** Using `Map` for the unit converter proved much more efficient than using nested IF-ELSE statements.
* **Validation Logic:** Input validation is crucial to prevent logical errors, such as negative mass or height.
* **Operator Synergy:** Combining multiple types of operators in one application (Task 3) provided a better understanding of how Dart processes complex expressions.
* **Precision:** Used `.toStringAsFixed()` to ensure the output is neat and user-friendly.

---

## Conclusion
The Week 02 practicum was completed successfully. I have mastered the usage of variables, various Dart operators, and complex data structures. These fundamentals are essential for the next stage of mobile app development using Flutter.