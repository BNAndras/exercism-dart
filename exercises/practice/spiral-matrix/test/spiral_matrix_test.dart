import 'package:spiral_matrix/spiral_matrix.dart';
import 'package:test/test.dart';

void main() {
  final spiralMatrix = SpiralMatrix();

  group('SpiralMatrix', () {
    test('empty spiral', () {
      final result = spiralMatrix.spiralMatrix(0);
      expect(result, equals(<Object>[]));
    }, skip: false);

    test('trivial spiral', () {
      final result = spiralMatrix.spiralMatrix(1);
      expect(
          result,
          equals(<List<int>>[
            <int>[1]
          ]));
    }, skip: true);

    test('spiral of size 2', () {
      final result = spiralMatrix.spiralMatrix(2);
      expect(
          result,
          equals(<List<int>>[
            <int>[1, 2],
            <int>[4, 3]
          ]));
    }, skip: true);

    test('spiral of size 3', () {
      final result = spiralMatrix.spiralMatrix(3);
      expect(
          result,
          equals(<List<int>>[
            <int>[1, 2, 3],
            <int>[8, 9, 4],
            <int>[7, 6, 5]
          ]));
    }, skip: true);

    test('spiral of size 4', () {
      final result = spiralMatrix.spiralMatrix(4);
      expect(
          result,
          equals(<List<int>>[
            <int>[1, 2, 3, 4],
            <int>[12, 13, 14, 5],
            <int>[11, 16, 15, 6],
            <int>[10, 9, 8, 7]
          ]));
    }, skip: true);

    test('spiral of size 5', () {
      final result = spiralMatrix.spiralMatrix(5);
      expect(
          result,
          equals(<List<int>>[
            <int>[1, 2, 3, 4, 5],
            <int>[16, 17, 18, 19, 6],
            <int>[15, 24, 25, 20, 7],
            <int>[14, 23, 22, 21, 8],
            <int>[13, 12, 11, 10, 9]
          ]));
    }, skip: true);
  });
}
