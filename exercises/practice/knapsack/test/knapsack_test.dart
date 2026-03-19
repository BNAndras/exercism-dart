import 'package:knapsack/knapsack.dart';
import 'package:test/test.dart';

void main() {
  final knapsack = Knapsack();

  group('Knapsack', () {
    test('no items', () {
      final result = knapsack.maximumValue(100, <Object>[]);
      expect(result, equals(0));
    }, skip: false);

    test('one item, too heavy', () {
      final result = knapsack.maximumValue(10, <Map<String, int>>[
        <String, int>{'weight': 100, 'value': 1}
      ]);
      expect(result, equals(0));
    }, skip: true);

    test('five items (cannot be greedy by weight)', () {
      final result = knapsack.maximumValue(10, <Map<String, int>>[
        <String, int>{'weight': 2, 'value': 5},
        <String, int>{'weight': 2, 'value': 5},
        <String, int>{'weight': 2, 'value': 5},
        <String, int>{'weight': 2, 'value': 5},
        <String, int>{'weight': 10, 'value': 21}
      ]);
      expect(result, equals(21));
    }, skip: true);

    test('five items (cannot be greedy by value)', () {
      final result = knapsack.maximumValue(10, <Map<String, int>>[
        <String, int>{'weight': 2, 'value': 20},
        <String, int>{'weight': 2, 'value': 20},
        <String, int>{'weight': 2, 'value': 20},
        <String, int>{'weight': 2, 'value': 20},
        <String, int>{'weight': 10, 'value': 50}
      ]);
      expect(result, equals(80));
    }, skip: true);

    test('example knapsack', () {
      final result = knapsack.maximumValue(10, <Map<String, int>>[
        <String, int>{'weight': 5, 'value': 10},
        <String, int>{'weight': 4, 'value': 40},
        <String, int>{'weight': 6, 'value': 30},
        <String, int>{'weight': 4, 'value': 50}
      ]);
      expect(result, equals(90));
    }, skip: true);

    test('8 items', () {
      final result = knapsack.maximumValue(104, <Map<String, int>>[
        <String, int>{'weight': 25, 'value': 350},
        <String, int>{'weight': 35, 'value': 400},
        <String, int>{'weight': 45, 'value': 450},
        <String, int>{'weight': 5, 'value': 20},
        <String, int>{'weight': 25, 'value': 70},
        <String, int>{'weight': 3, 'value': 8},
        <String, int>{'weight': 2, 'value': 5},
        <String, int>{'weight': 2, 'value': 5}
      ]);
      expect(result, equals(900));
    }, skip: true);

    test('15 items', () {
      final result = knapsack.maximumValue(750, <Map<String, int>>[
        <String, int>{'weight': 70, 'value': 135},
        <String, int>{'weight': 73, 'value': 139},
        <String, int>{'weight': 77, 'value': 149},
        <String, int>{'weight': 80, 'value': 150},
        <String, int>{'weight': 82, 'value': 156},
        <String, int>{'weight': 87, 'value': 163},
        <String, int>{'weight': 90, 'value': 173},
        <String, int>{'weight': 94, 'value': 184},
        <String, int>{'weight': 98, 'value': 192},
        <String, int>{'weight': 106, 'value': 201},
        <String, int>{'weight': 110, 'value': 210},
        <String, int>{'weight': 113, 'value': 214},
        <String, int>{'weight': 115, 'value': 221},
        <String, int>{'weight': 118, 'value': 229},
        <String, int>{'weight': 120, 'value': 240}
      ]);
      expect(result, equals(1458));
    }, skip: true);
  });
}
