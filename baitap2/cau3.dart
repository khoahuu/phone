import 'dart:io';

class Car {
  final String make = 'Mer';
  final String model = 'G63';
  final int year = 2015;
  // Car(){}
  void displayInfo() {
    print('make: $make \n model: $model \n year: $year');
  }
}

void main() {
  Car car = Car();
  car.displayInfo();
}
