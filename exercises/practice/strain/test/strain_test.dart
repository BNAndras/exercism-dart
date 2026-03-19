import 'package:strain/strain.dart';
import 'package:test/test.dart';

void main() {
  final strain = Strain();

  group('Strain', () {
    test('keep on empty list returns empty list', () {
      final result = strain.keep(<Object>[], 'fn(x) -> true');
      expect(result, equals(<Object>[]));
    }, skip: false);

    test('keeps everything', () {
      final result = strain.keep(<int>[1, 3, 5], 'fn(x) -> true');
      expect(result, equals(<int>[1, 3, 5]));
    }, skip: true);

    test('keeps nothing', () {
      final result = strain.keep(<int>[1, 3, 5], 'fn(x) -> false');
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('keeps first and last', () {
      final result = strain.keep(<int>[1, 2, 3], 'fn(x) -> x % 2 == 1');
      expect(result, equals(<int>[1, 3]));
    }, skip: true);

    test('keeps neither first nor last', () {
      final result = strain.keep(<int>[1, 2, 3], 'fn(x) -> x % 2 == 0');
      expect(result, equals(<int>[2]));
    }, skip: true);

    test('keeps strings', () {
      final result = strain.keep(
          <String>['apple', 'zebra', 'banana', 'zombies', 'cherimoya', 'zealot'], 'fn(x) -> starts_with(x, \'z\')');
      expect(result, equals(<String>['zebra', 'zombies', 'zealot']));
    }, skip: true);

    test('keeps lists', () {
      final result = strain.keep(<List<int>>[
        <int>[1, 2, 3],
        <int>[5, 5, 5],
        <int>[5, 1, 2],
        <int>[2, 1, 2],
        <int>[1, 5, 2],
        <int>[2, 2, 1],
        <int>[1, 2, 5]
      ], 'fn(x) -> contains(x, 5)');
      expect(
          result,
          equals(<List<int>>[
            <int>[5, 5, 5],
            <int>[5, 1, 2],
            <int>[1, 5, 2],
            <int>[1, 2, 5]
          ]));
    }, skip: true);

    test('discard on empty list returns empty list', () {
      final result = strain.discard(<Object>[], 'fn(x) -> true');
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('discards everything', () {
      final result = strain.discard(<int>[1, 3, 5], 'fn(x) -> true');
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('discards nothing', () {
      final result = strain.discard(<int>[1, 3, 5], 'fn(x) -> false');
      expect(result, equals(<int>[1, 3, 5]));
    }, skip: true);

    test('discards first and last', () {
      final result = strain.discard(<int>[1, 2, 3], 'fn(x) -> x % 2 == 1');
      expect(result, equals(<int>[2]));
    }, skip: true);

    test('discards neither first nor last', () {
      final result = strain.discard(<int>[1, 2, 3], 'fn(x) -> x % 2 == 0');
      expect(result, equals(<int>[1, 3]));
    }, skip: true);

    test('discards strings', () {
      final result = strain.discard(
          <String>['apple', 'zebra', 'banana', 'zombies', 'cherimoya', 'zealot'], 'fn(x) -> starts_with(x, \'z\')');
      expect(result, equals(<String>['apple', 'banana', 'cherimoya']));
    }, skip: true);

    test('discards lists', () {
      final result = strain.discard(<List<int>>[
        <int>[1, 2, 3],
        <int>[5, 5, 5],
        <int>[5, 1, 2],
        <int>[2, 1, 2],
        <int>[1, 5, 2],
        <int>[2, 2, 1],
        <int>[1, 2, 5]
      ], 'fn(x) -> contains(x, 5)');
      expect(
          result,
          equals(<List<int>>[
            <int>[1, 2, 3],
            <int>[2, 1, 2],
            <int>[2, 2, 1]
          ]));
    }, skip: true);
  });
}
