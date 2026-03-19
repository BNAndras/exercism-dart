import 'package:gigasecond/gigasecond.dart';
import 'package:test/test.dart';

void main() {
  final gigasecond = Gigasecond();

  group('Gigasecond', () {
    test('full time specified', () {
      final result = gigasecond.add('2015-01-24T22:00:00');
      expect(result, equals('2046-10-02T23:46:40'));
    }, skip: false);

    test('full time with day roll-over', () {
      final result = gigasecond.add('2015-01-24T23:59:59');
      expect(result, equals('2046-10-03T01:46:39'));
    }, skip: true);
  });
}
