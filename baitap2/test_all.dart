import 'dart:io';
import 'package:test/test.dart';

// Import các module Dart cụ thể
import 'cau1.dart' as cau1;
import 'cau2.dart' as cau2;
import 'cau3.dart' as cau3;
import 'cau4.dart' as cau4;
import 'cau5.dart' as cau5;

void main() {
  group('🗂 Kiểm tra tồn tại file:', () {
    test('cau1.dart tồn tại', () {
      expect(File('cau1.dart').existsSync(), isTrue);
    });
    test('cau2.dart tồn tại', () {
      expect(File('cau2.dart').existsSync(), isTrue);
    });
    test('cau3.dart tồn tại', () {
      expect(File('cau3.dart').existsSync(), isTrue);
    });
    test('cau4.dart tồn tại', () {
      expect(File('cau4.dart').existsSync(), isTrue);
    });
    test('cau5.dart tồn tại', () {
      expect(File('cau5.dart').existsSync(), isTrue);
    });
  });

  group('✅ Kiểm thử chức năng:', () {
    test('Câu 1: Hàm testCau1() chạy bình thường', () {
      expect(() => cau1.testCau1(), returnsNormally);
    });

    test('Câu 2: Tính tổng 5 + 7 = 12', () {
      final sum = cau2.calculateSum(5, 7);
      expect(sum, equals(12));
    });

    test('Câu 3: Tạo xe và kiểm tra thuộc tính', () {
      final car = cau3.Car(make: 'Honda', model: 'Civic', year: 2022);
      expect(car.make, equals('Honda'));
      expect(car.model, equals('Civic'));
      expect(car.year, equals(2022));
    });

    test('Câu 4: Chia cho 0 ném lỗi', () {
      expect(() => cau4.safeDivide(10, 0), throwsA(isA<Exception>()));
    });

    test('Câu 5: Dữ liệu có chứa key "name"', () async {
      final data = await cau5.fetchData();
      expect(data.containsKey('name'), isTrue);
    });
  });
}
