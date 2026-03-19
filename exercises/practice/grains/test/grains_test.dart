import 'package:grains/grains.dart';
import 'package:test/test.dart';

void main() {
  final grains = Grains();

  group('Grains', () {
    group('returns the number of grains on the square', () {
      test('grains on square 1', () {
        final result = grains.square(1);
        expect(result, equals(1));
      }, skip: false);

      test('grains on square 2', () {
        final result = grains.square(2);
        expect(result, equals(2));
      }, skip: true);

      test('grains on square 3', () {
        final result = grains.square(3);
        expect(result, equals(4));
      }, skip: true);

      test('grains on square 4', () {
        final result = grains.square(4);
        expect(result, equals(8));
      }, skip: true);

      test('grains on square 16', () {
        final result = grains.square(16);
        expect(result, equals(32768));
      }, skip: true);

      test('grains on square 32', () {
        final result = grains.square(32);
        expect(result, equals(2147483648));
      }, skip: true);

      test('grains on square 64', () {
        final result = grains.square(64);
        expect(result, equals(9223372036854776000.0));
      }, skip: true);

      test('square 0 is invalid', () {
        final result = grains.square(0);
        expect(result, equals(<String, String>{'error': 'square must be between 1 and 64'}));
      }, skip: true);

      test('negative square is invalid', () {
        final result = grains.square(-1);
        expect(result, equals(<String, String>{'error': 'square must be between 1 and 64'}));
      }, skip: true);

      test('square greater than 64 is invalid', () {
        final result = grains.square(65);
        expect(result, equals(<String, String>{'error': 'square must be between 1 and 64'}));
      }, skip: true);
    });

    test('returns the total number of grains on the board', () {
      final result = grains.total();
      expect(result, equals(18446744073709552000.0));
    }, skip: true);
  });
}
