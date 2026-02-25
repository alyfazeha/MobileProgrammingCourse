import 'package:operator_program/operator_program.dart' as operator_program;

void main() {
  int a = 10;
  int b = 3;

  print("OPERATOR ARITMATIKA");
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a * b = ${a * b}");
  print("a / b = ${a / b}");
  print("a % b = ${a % b}");

  print("\nINCREMENT & DECREMENT");
  int c = 5;
  print("c = $c");
  print("c++ = ${c++}");
  print("setelah c++ = $c");
  print("++c = ${++c}");
  print("c-- = ${c--}");
  print("setelah c-- = $c");

  print("\nOPERATOR RELATIONAL");
  print("a == b : ${a == b}");
  print("a != b : ${a != b}");
  print("a > b  : ${a > b}");
  print("a < b  : ${a < b}");
  print("a >= b : ${a >= b}");
  print("a <= b : ${a <= b}");

  print("\nOPERATOR LOGIKA");
  bool x = true;
  bool y = false;
  print("x && y = ${x && y}");
  print("x || y = ${x || y}");
  print("!x = ${!x}");

  print("\nOPERATOR PENUGASAN");
  int d = 5;
  d += 3;
  print("d += 3 -> $d");
  d -= 2;
  print("d -= 2 -> $d");
  d *= 2;
  print("d *= 2 -> $d");
  d ~/= 3;
  print("d ~/= 3 -> $d");

  print("\nOPERATOR NULL-AWARE");
  String? nama;
  String hasilNama = nama ?? "Guest";
  print("Nama: $hasilNama");

  print("\nOPERATOR TYPE TEST");
  var angka = 10;
  print("angka is int : ${angka is int}");
  print("angka is! String : ${angka is! String}");

  print("\nOPERATOR CONDITIONAL (TERNARY)");
  String terbesar = a > b ? "a lebih besar" : "b lebih besar";
  print(terbesar);

  print("\nOPERATOR BITWISE");
  int e = 5; // 0101
  int f = 3; // 0011
  print("e & f = ${e & f}");
  print("e | f = ${e | f}");
  print("e ^ f = ${e ^ f}");
  print("~e = ${~e}");
  print("e << 1 = ${e << 1}");
  print("e >> 1 = ${e >> 1}");
}
