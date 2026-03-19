import 'package:all_your_base/all_your_base.dart';
import 'package:test/test.dart';

void main() {
  final allYourBase = AllYourBase();

  group('AllYourBase', () {
    test('single bit one to decimal', () {
      final result = allYourBase.rebase(2, <int>[1], 10);
      expect(result, equals(<int>[1]));
    }, skip: false);

    test('binary to single decimal', () {
      final result = allYourBase.rebase(2, <int>[1, 0, 1], 10);
      expect(result, equals(<int>[5]));
    }, skip: true);

    test('single decimal to binary', () {
      final result = allYourBase.rebase(10, <int>[5], 2);
      expect(result, equals(<int>[1, 0, 1]));
    }, skip: true);

    test('binary to multiple decimal', () {
      final result = allYourBase.rebase(2, <int>[1, 0, 1, 0, 1, 0], 10);
      expect(result, equals(<int>[4, 2]));
    }, skip: true);

    test('decimal to binary', () {
      final result = allYourBase.rebase(10, <int>[4, 2], 2);
      expect(result, equals(<int>[1, 0, 1, 0, 1, 0]));
    }, skip: true);

    test('trinary to hexadecimal', () {
      final result = allYourBase.rebase(3, <int>[1, 1, 2, 0], 16);
      expect(result, equals(<int>[2, 10]));
    }, skip: true);

    test('hexadecimal to trinary', () {
      final result = allYourBase.rebase(16, <int>[2, 10], 3);
      expect(result, equals(<int>[1, 1, 2, 0]));
    }, skip: true);

    test('15-bit integer', () {
      final result = allYourBase.rebase(97, <int>[3, 46, 60], 73);
      expect(result, equals(<int>[6, 10, 45]));
    }, skip: true);

    test('empty list', () {
      final result = allYourBase.rebase(2, <Object>[], 10);
      expect(result, equals(<int>[0]));
    }, skip: true);

    test('single zero', () {
      final result = allYourBase.rebase(10, <int>[0], 2);
      expect(result, equals(<int>[0]));
    }, skip: true);

    test('multiple zeros', () {
      final result = allYourBase.rebase(10, <int>[0, 0, 0], 2);
      expect(result, equals(<int>[0]));
    }, skip: true);

    test('leading zeros', () {
      final result = allYourBase.rebase(7, <int>[0, 6, 0], 10);
      expect(result, equals(<int>[4, 2]));
    }, skip: true);

    test('input base is one', () {
      final result = allYourBase.rebase(1, <int>[0], 10);
      expect(result, equals(<String, String>{'error': 'input base must be >= 2'}));
    }, skip: true);

    test('input base is zero', () {
      final result = allYourBase.rebase(0, <Object>[], 10);
      expect(result, equals(<String, String>{'error': 'input base must be >= 2'}));
    }, skip: true);

    test('input base is negative', () {
      final result = allYourBase.rebase(-2, <int>[1], 10);
      expect(result, equals(<String, String>{'error': 'input base must be >= 2'}));
    }, skip: true);

    test('negative digit', () {
      final result = allYourBase.rebase(2, <int>[1, -1, 1, 0, 1, 0], 10);
      expect(result, equals(<String, String>{'error': 'all digits must satisfy 0 <= d < input base'}));
    }, skip: true);

    test('invalid positive digit', () {
      final result = allYourBase.rebase(2, <int>[1, 2, 1, 0, 1, 0], 10);
      expect(result, equals(<String, String>{'error': 'all digits must satisfy 0 <= d < input base'}));
    }, skip: true);

    test('output base is one', () {
      final result = allYourBase.rebase(2, <int>[1, 0, 1, 0, 1, 0], 1);
      expect(result, equals(<String, String>{'error': 'output base must be >= 2'}));
    }, skip: true);

    test('output base is zero', () {
      final result = allYourBase.rebase(10, <int>[7], 0);
      expect(result, equals(<String, String>{'error': 'output base must be >= 2'}));
    }, skip: true);

    test('output base is negative', () {
      final result = allYourBase.rebase(2, <int>[1], -7);
      expect(result, equals(<String, String>{'error': 'output base must be >= 2'}));
    }, skip: true);

    test('both bases are negative', () {
      final result = allYourBase.rebase(-2, <int>[1], -7);
      expect(result, equals(<String, String>{'error': 'input base must be >= 2'}));
    }, skip: true);
  });
}
