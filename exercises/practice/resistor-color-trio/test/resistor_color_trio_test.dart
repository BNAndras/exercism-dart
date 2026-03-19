import 'package:resistor_color_trio/resistor_color_trio.dart';
import 'package:test/test.dart';

void main() {
  final resistorColorTrio = ResistorColorTrio();

  group('ResistorColorTrio', () {
    test('Orange and orange and black', () {
      final result = resistorColorTrio.label(<String>['orange', 'orange', 'black']);
      expect(result, equals(<String, dynamic>{'value': 33, 'unit': 'ohms'}));
    }, skip: false);

    test('Blue and grey and brown', () {
      final result = resistorColorTrio.label(<String>['blue', 'grey', 'brown']);
      expect(result, equals(<String, dynamic>{'value': 680, 'unit': 'ohms'}));
    }, skip: true);

    test('Red and black and red', () {
      final result = resistorColorTrio.label(<String>['red', 'black', 'red']);
      expect(result, equals(<String, dynamic>{'value': 2, 'unit': 'kiloohms'}));
    }, skip: true);

    test('Green and brown and orange', () {
      final result = resistorColorTrio.label(<String>['green', 'brown', 'orange']);
      expect(result, equals(<String, dynamic>{'value': 51, 'unit': 'kiloohms'}));
    }, skip: true);

    test('Yellow and violet and yellow', () {
      final result = resistorColorTrio.label(<String>['yellow', 'violet', 'yellow']);
      expect(result, equals(<String, dynamic>{'value': 470, 'unit': 'kiloohms'}));
    }, skip: true);

    test('Blue and violet and blue', () {
      final result = resistorColorTrio.label(<String>['blue', 'violet', 'blue']);
      expect(result, equals(<String, dynamic>{'value': 67, 'unit': 'megaohms'}));
    }, skip: true);

    test('Minimum possible value', () {
      final result = resistorColorTrio.label(<String>['black', 'black', 'black']);
      expect(result, equals(<String, dynamic>{'value': 0, 'unit': 'ohms'}));
    }, skip: true);

    test('Maximum possible value', () {
      final result = resistorColorTrio.label(<String>['white', 'white', 'white']);
      expect(result, equals(<String, dynamic>{'value': 99, 'unit': 'gigaohms'}));
    }, skip: true);

    test('First two colors make an invalid octal number', () {
      final result = resistorColorTrio.label(<String>['black', 'grey', 'black']);
      expect(result, equals(<String, dynamic>{'value': 8, 'unit': 'ohms'}));
    }, skip: true);

    test('Ignore extra colors', () {
      final result = resistorColorTrio.label(<String>['blue', 'green', 'yellow', 'orange']);
      expect(result, equals(<String, dynamic>{'value': 650, 'unit': 'kiloohms'}));
    }, skip: true);
  });
}
