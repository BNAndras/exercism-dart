import 'package:test/test.dart';
import 'package:two_bucket/two_bucket.dart';

void main() {
  final twoBucket = TwoBucket();

  group('TwoBucket', () {
    test('Measure using bucket one of size 3 and bucket two of size 5 - start with bucket one', () {
      final result = twoBucket.measure(3, 5, 1, 'one');
      expect(result, equals(<String, dynamic>{'moves': 4, 'goalBucket': 'one', 'otherBucket': 5}));
    }, skip: false);

    test('Measure using bucket one of size 3 and bucket two of size 5 - start with bucket two', () {
      final result = twoBucket.measure(3, 5, 1, 'two');
      expect(result, equals(<String, dynamic>{'moves': 8, 'goalBucket': 'two', 'otherBucket': 3}));
    }, skip: true);

    test('Measure using bucket one of size 7 and bucket two of size 11 - start with bucket one', () {
      final result = twoBucket.measure(7, 11, 2, 'one');
      expect(result, equals(<String, dynamic>{'moves': 14, 'goalBucket': 'one', 'otherBucket': 11}));
    }, skip: true);

    test('Measure using bucket one of size 7 and bucket two of size 11 - start with bucket two', () {
      final result = twoBucket.measure(7, 11, 2, 'two');
      expect(result, equals(<String, dynamic>{'moves': 18, 'goalBucket': 'two', 'otherBucket': 7}));
    }, skip: true);

    test('Measure one step using bucket one of size 1 and bucket two of size 3 - start with bucket two', () {
      final result = twoBucket.measure(1, 3, 3, 'two');
      expect(result, equals(<String, dynamic>{'moves': 1, 'goalBucket': 'two', 'otherBucket': 0}));
    }, skip: true);

    test('Measure using bucket one of size 2 and bucket two of size 3 - start with bucket one and end with bucket two',
        () {
      final result = twoBucket.measure(2, 3, 3, 'one');
      expect(result, equals(<String, dynamic>{'moves': 2, 'goalBucket': 'two', 'otherBucket': 2}));
    }, skip: true);

    test('Measure using bucket one much bigger than bucket two', () {
      final result = twoBucket.measure(5, 1, 2, 'one');
      expect(result, equals(<String, dynamic>{'moves': 6, 'goalBucket': 'one', 'otherBucket': 1}));
    }, skip: true);

    test('Measure using bucket one much smaller than bucket two', () {
      final result = twoBucket.measure(3, 15, 9, 'one');
      expect(result, equals(<String, dynamic>{'moves': 6, 'goalBucket': 'two', 'otherBucket': 0}));
    }, skip: true);

    test('Not possible to reach the goal', () {
      final result = twoBucket.measure(6, 15, 5, 'one');
      expect(result, equals(<String, String>{'error': 'impossible'}));
    }, skip: true);

    test('With the same buckets but a different goal, then it is possible', () {
      final result = twoBucket.measure(6, 15, 9, 'one');
      expect(result, equals(<String, dynamic>{'moves': 10, 'goalBucket': 'two', 'otherBucket': 0}));
    }, skip: true);

    test('Goal larger than both buckets is impossible', () {
      final result = twoBucket.measure(5, 7, 8, 'one');
      expect(result, equals(<String, String>{'error': 'impossible'}));
    }, skip: true);
  });
}
