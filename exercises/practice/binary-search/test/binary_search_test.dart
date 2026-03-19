import 'package:binary_search/binary_search.dart';
import 'package:test/test.dart';

void main() {
  final binarySearch = BinarySearch();

  group('BinarySearch', () {
    test('finds a value in an array with one element', () {
      final result = binarySearch.find(<int>[6], 6);
      expect(result, equals(0));
    }, skip: false);

    test('finds a value in the middle of an array', () {
      final result = binarySearch.find(<int>[1, 3, 4, 6, 8, 9, 11], 6);
      expect(result, equals(3));
    }, skip: true);

    test('finds a value at the beginning of an array', () {
      final result = binarySearch.find(<int>[1, 3, 4, 6, 8, 9, 11], 1);
      expect(result, equals(0));
    }, skip: true);

    test('finds a value at the end of an array', () {
      final result = binarySearch.find(<int>[1, 3, 4, 6, 8, 9, 11], 11);
      expect(result, equals(6));
    }, skip: true);

    test('finds a value in an array of odd length', () {
      final result = binarySearch.find(<int>[1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634], 144);
      expect(result, equals(9));
    }, skip: true);

    test('finds a value in an array of even length', () {
      final result = binarySearch.find(<int>[1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377], 21);
      expect(result, equals(5));
    }, skip: true);

    test('identifies that a value is not included in the array', () {
      final result = binarySearch.find(<int>[1, 3, 4, 6, 8, 9, 11], 7);
      expect(result, equals(<String, String>{'error': 'value not in array'}));
    }, skip: true);

    test('a value smaller than the array\'s smallest value is not found', () {
      final result = binarySearch.find(<int>[1, 3, 4, 6, 8, 9, 11], 0);
      expect(result, equals(<String, String>{'error': 'value not in array'}));
    }, skip: true);

    test('a value larger than the array\'s largest value is not found', () {
      final result = binarySearch.find(<int>[1, 3, 4, 6, 8, 9, 11], 13);
      expect(result, equals(<String, String>{'error': 'value not in array'}));
    }, skip: true);

    test('nothing is found in an empty array', () {
      final result = binarySearch.find(<Object>[], 1);
      expect(result, equals(<String, String>{'error': 'value not in array'}));
    }, skip: true);

    test('nothing is found when the left and right bounds cross', () {
      final result = binarySearch.find(<int>[1, 2], 0);
      expect(result, equals(<String, String>{'error': 'value not in array'}));
    }, skip: true);
  });
}
