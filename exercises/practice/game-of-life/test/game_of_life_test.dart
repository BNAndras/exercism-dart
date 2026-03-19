import 'package:game_of_life/game_of_life.dart';
import 'package:test/test.dart';

void main() {
  final gameOfLife = GameOfLife();

  group('GameOfLife', () {
    test('empty matrix', () {
      final result = gameOfLife.tick(<Object>[]);
      expect(result, equals(<Object>[]));
    }, skip: false);

    test('live cells with zero live neighbors die', () {
      final result = gameOfLife.tick(<List<int>>[
        <int>[0, 0, 0],
        <int>[0, 1, 0],
        <int>[0, 0, 0]
      ]);
      expect(
          result,
          equals(<List<int>>[
            <int>[0, 0, 0],
            <int>[0, 0, 0],
            <int>[0, 0, 0]
          ]));
    }, skip: true);

    test('live cells with only one live neighbor die', () {
      final result = gameOfLife.tick(<List<int>>[
        <int>[0, 0, 0],
        <int>[0, 1, 0],
        <int>[0, 1, 0]
      ]);
      expect(
          result,
          equals(<List<int>>[
            <int>[0, 0, 0],
            <int>[0, 0, 0],
            <int>[0, 0, 0]
          ]));
    }, skip: true);

    test('live cells with two live neighbors stay alive', () {
      final result = gameOfLife.tick(<List<int>>[
        <int>[1, 0, 1],
        <int>[1, 0, 1],
        <int>[1, 0, 1]
      ]);
      expect(
          result,
          equals(<List<int>>[
            <int>[0, 0, 0],
            <int>[1, 0, 1],
            <int>[0, 0, 0]
          ]));
    }, skip: true);

    test('live cells with three live neighbors stay alive', () {
      final result = gameOfLife.tick(<List<int>>[
        <int>[0, 1, 0],
        <int>[1, 0, 0],
        <int>[1, 1, 0]
      ]);
      expect(
          result,
          equals(<List<int>>[
            <int>[0, 0, 0],
            <int>[1, 0, 0],
            <int>[1, 1, 0]
          ]));
    }, skip: true);

    test('dead cells with three live neighbors become alive', () {
      final result = gameOfLife.tick(<List<int>>[
        <int>[1, 1, 0],
        <int>[0, 0, 0],
        <int>[1, 0, 0]
      ]);
      expect(
          result,
          equals(<List<int>>[
            <int>[0, 0, 0],
            <int>[1, 1, 0],
            <int>[0, 0, 0]
          ]));
    }, skip: true);

    test('live cells with four or more neighbors die', () {
      final result = gameOfLife.tick(<List<int>>[
        <int>[1, 1, 1],
        <int>[1, 1, 1],
        <int>[1, 1, 1]
      ]);
      expect(
          result,
          equals(<List<int>>[
            <int>[1, 0, 1],
            <int>[0, 0, 0],
            <int>[1, 0, 1]
          ]));
    }, skip: true);

    test('bigger matrix', () {
      final result = gameOfLife.tick(<List<int>>[
        <int>[1, 1, 0, 1, 1, 0, 0, 0],
        <int>[1, 0, 1, 1, 0, 0, 0, 0],
        <int>[1, 1, 1, 0, 0, 1, 1, 1],
        <int>[0, 0, 0, 0, 0, 1, 1, 0],
        <int>[1, 0, 0, 0, 1, 1, 0, 0],
        <int>[1, 1, 0, 0, 0, 1, 1, 1],
        <int>[0, 0, 1, 0, 1, 0, 0, 1],
        <int>[1, 0, 0, 0, 0, 0, 1, 1]
      ]);
      expect(
          result,
          equals(<List<int>>[
            <int>[1, 1, 0, 1, 1, 0, 0, 0],
            <int>[0, 0, 0, 0, 0, 1, 1, 0],
            <int>[1, 0, 1, 1, 1, 1, 0, 1],
            <int>[1, 0, 0, 0, 0, 0, 0, 1],
            <int>[1, 1, 0, 0, 1, 0, 0, 1],
            <int>[1, 1, 0, 1, 0, 0, 0, 1],
            <int>[1, 0, 0, 0, 0, 0, 0, 0],
            <int>[0, 0, 0, 0, 0, 0, 1, 1]
          ]));
    }, skip: true);
  });
}
