import 'dart:io';

int calculateSum(int a, int b) => a + b;
void main() {
  int val1, val2;
  print('input val1:  ');
  val1 = int.parse(stdin.readLineSync()!);
  print('input val2:  ');
  val2 = int.parse(stdin.readLineSync()!);
  int sum = calculateSum(val1, val2);
  print('Tong  = $sum');
}
