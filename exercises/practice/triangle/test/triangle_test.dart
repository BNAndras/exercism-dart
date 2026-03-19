import 'package:test/test.dart';
import 'package:triangle/triangle.dart';

void main() {
  final triangle = Triangle();

  group('Triangle', () {
    group('equilateral triangle', () {
      test('all sides are equal', () {
        final result = triangle.equilateral(<int>[2, 2, 2]);
        expect(result, equals(true));
      }, skip: false);

      test('any side is unequal', () {
        final result = triangle.equilateral(<int>[2, 3, 2]);
        expect(result, equals(false));
      }, skip: true);

      test('no sides are equal', () {
        final result = triangle.equilateral(<int>[5, 4, 6]);
        expect(result, equals(false));
      }, skip: true);

      test('all zero sides is not a triangle', () {
        final result = triangle.equilateral(<int>[0, 0, 0]);
        expect(result, equals(false));
      }, skip: true);

      test('sides may be floats', () {
        final result = triangle.equilateral(<double>[0.5, 0.5, 0.5]);
        expect(result, equals(true));
      }, skip: true);
    });

    group('isosceles triangle', () {
      test('last two sides are equal', () {
        final result = triangle.isosceles(<int>[3, 4, 4]);
        expect(result, equals(true));
      }, skip: true);

      test('first two sides are equal', () {
        final result = triangle.isosceles(<int>[4, 4, 3]);
        expect(result, equals(true));
      }, skip: true);

      test('first and last sides are equal', () {
        final result = triangle.isosceles(<int>[4, 3, 4]);
        expect(result, equals(true));
      }, skip: true);

      test('equilateral triangles are also isosceles', () {
        final result = triangle.isosceles(<int>[4, 4, 4]);
        expect(result, equals(true));
      }, skip: true);

      test('no sides are equal', () {
        final result = triangle.isosceles(<int>[2, 3, 4]);
        expect(result, equals(false));
      }, skip: true);

      test('first triangle inequality violation', () {
        final result = triangle.isosceles(<int>[1, 1, 3]);
        expect(result, equals(false));
      }, skip: true);

      test('second triangle inequality violation', () {
        final result = triangle.isosceles(<int>[1, 3, 1]);
        expect(result, equals(false));
      }, skip: true);

      test('third triangle inequality violation', () {
        final result = triangle.isosceles(<int>[3, 1, 1]);
        expect(result, equals(false));
      }, skip: true);

      test('sides may be floats', () {
        final result = triangle.isosceles(<double>[0.5, 0.4, 0.5]);
        expect(result, equals(true));
      }, skip: true);
    });

    group('scalene triangle', () {
      test('no sides are equal', () {
        final result = triangle.scalene(<int>[5, 4, 6]);
        expect(result, equals(true));
      }, skip: true);

      test('all sides are equal', () {
        final result = triangle.scalene(<int>[4, 4, 4]);
        expect(result, equals(false));
      }, skip: true);

      test('first and second sides are equal', () {
        final result = triangle.scalene(<int>[4, 4, 3]);
        expect(result, equals(false));
      }, skip: true);

      test('first and third sides are equal', () {
        final result = triangle.scalene(<int>[3, 4, 3]);
        expect(result, equals(false));
      }, skip: true);

      test('second and third sides are equal', () {
        final result = triangle.scalene(<int>[4, 3, 3]);
        expect(result, equals(false));
      }, skip: true);

      test('may not violate triangle inequality', () {
        final result = triangle.scalene(<int>[7, 3, 2]);
        expect(result, equals(false));
      }, skip: true);

      test('sides may be floats', () {
        final result = triangle.scalene(<double>[0.5, 0.4, 0.6]);
        expect(result, equals(true));
      }, skip: true);
    });
  });
}
