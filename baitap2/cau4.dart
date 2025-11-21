import 'dart:ffi';
import 'dart:io';

void main() {
  int val1, val2;
  print('input val1:  ');
  val1 = int.parse(stdin.readLineSync()!);
  print('input val2:  ');
  val2 = int.parse(stdin.readLineSync()!);
  try {
    double re = val1 / val2;
    print(re);
  } catch (e) {
    print(Exception().toString());
  }
}
