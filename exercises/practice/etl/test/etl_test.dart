import 'package:etl/etl.dart';
import 'package:test/test.dart';

void main() {
  final etl = Etl();

  group('Etl', () {
    test('single letter', () {
      final result = etl.transform(<String, List<String>>{
        '1': <String>['A']
      });
      expect(result, equals(<String, int>{'a': 1}));
    }, skip: false);

    test('single score with multiple letters', () {
      final result = etl.transform(<String, List<String>>{
        '1': <String>['A', 'E', 'I', 'O', 'U']
      });
      expect(result, equals(<String, int>{'a': 1, 'e': 1, 'i': 1, 'o': 1, 'u': 1}));
    }, skip: true);

    test('multiple scores with multiple letters', () {
      final result = etl.transform(<String, List<String>>{
        '1': <String>['A', 'E'],
        '2': <String>['D', 'G']
      });
      expect(result, equals(<String, int>{'a': 1, 'd': 2, 'e': 1, 'g': 2}));
    }, skip: true);

    test('multiple scores with differing numbers of letters', () {
      final result = etl.transform(<String, List<String>>{
        '1': <String>['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
        '2': <String>['D', 'G'],
        '3': <String>['B', 'C', 'M', 'P'],
        '4': <String>['F', 'H', 'V', 'W', 'Y'],
        '5': <String>['K'],
        '8': <String>['J', 'X'],
        '10': <String>['Q', 'Z']
      });
      expect(
          result,
          equals(<String, int>{
            'a': 1,
            'b': 3,
            'c': 3,
            'd': 2,
            'e': 1,
            'f': 4,
            'g': 2,
            'h': 4,
            'i': 1,
            'j': 8,
            'k': 5,
            'l': 1,
            'm': 3,
            'n': 1,
            'o': 1,
            'p': 3,
            'q': 10,
            'r': 1,
            's': 1,
            't': 1,
            'u': 1,
            'v': 4,
            'w': 4,
            'x': 8,
            'y': 4,
            'z': 10
          }));
    }, skip: true);
  });
}
