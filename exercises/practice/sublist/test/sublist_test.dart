import 'package:sublist/sublist.dart';
import 'package:test/test.dart';

void main() {
  final sublist = Sublist();

  group('Sublist', () {
    test('empty lists', () {
      final result = sublist.sublist(<Object>[], <Object>[]);
      expect(result, equals('equal'));
    }, skip: false);

    test('empty list within non empty list', () {
      final result = sublist.sublist(<Object>[], <int>[1, 2, 3]);
      expect(result, equals('sublist'));
    }, skip: true);

    test('non empty list contains empty list', () {
      final result = sublist.sublist(<int>[1, 2, 3], <Object>[]);
      expect(result, equals('superlist'));
    }, skip: true);

    test('list equals itself', () {
      final result = sublist.sublist(<int>[1, 2, 3], <int>[1, 2, 3]);
      expect(result, equals('equal'));
    }, skip: true);

    test('different lists', () {
      final result = sublist.sublist(<int>[1, 2, 3], <int>[2, 3, 4]);
      expect(result, equals('unequal'));
    }, skip: true);

    test('false start', () {
      final result = sublist.sublist(<int>[1, 2, 5], <int>[0, 1, 2, 3, 1, 2, 5, 6]);
      expect(result, equals('sublist'));
    }, skip: true);

    test('consecutive', () {
      final result = sublist.sublist(<int>[1, 1, 2], <int>[0, 1, 1, 1, 2, 1, 2]);
      expect(result, equals('sublist'));
    }, skip: true);

    test('sublist at start', () {
      final result = sublist.sublist(<int>[0, 1, 2], <int>[0, 1, 2, 3, 4, 5]);
      expect(result, equals('sublist'));
    }, skip: true);

    test('sublist in middle', () {
      final result = sublist.sublist(<int>[2, 3, 4], <int>[0, 1, 2, 3, 4, 5]);
      expect(result, equals('sublist'));
    }, skip: true);

    test('sublist at end', () {
      final result = sublist.sublist(<int>[3, 4, 5], <int>[0, 1, 2, 3, 4, 5]);
      expect(result, equals('sublist'));
    }, skip: true);

    test('at start of superlist', () {
      final result = sublist.sublist(<int>[0, 1, 2, 3, 4, 5], <int>[0, 1, 2]);
      expect(result, equals('superlist'));
    }, skip: true);

    test('in middle of superlist', () {
      final result = sublist.sublist(<int>[0, 1, 2, 3, 4, 5], <int>[2, 3]);
      expect(result, equals('superlist'));
    }, skip: true);

    test('at end of superlist', () {
      final result = sublist.sublist(<int>[0, 1, 2, 3, 4, 5], <int>[3, 4, 5]);
      expect(result, equals('superlist'));
    }, skip: true);

    test('first list missing element from second list', () {
      final result = sublist.sublist(<int>[1, 3], <int>[1, 2, 3]);
      expect(result, equals('unequal'));
    }, skip: true);

    test('second list missing element from first list', () {
      final result = sublist.sublist(<int>[1, 2, 3], <int>[1, 3]);
      expect(result, equals('unequal'));
    }, skip: true);

    test('first list missing additional digits from second list', () {
      final result = sublist.sublist(<int>[1, 2], <int>[1, 22]);
      expect(result, equals('unequal'));
    }, skip: true);

    test('order matters to a list', () {
      final result = sublist.sublist(<int>[1, 2, 3], <int>[3, 2, 1]);
      expect(result, equals('unequal'));
    }, skip: true);

    test('same digits but different numbers', () {
      final result = sublist.sublist(<int>[1, 0, 1], <int>[10, 1]);
      expect(result, equals('unequal'));
    }, skip: true);
  });
}
