import 'package:space_age/space_age.dart';
import 'package:test/test.dart';

void main() {
  final spaceAge = SpaceAge();

  group('SpaceAge', () {
    test('age on Earth', () {
      final result = spaceAge.age('Earth', 1000000000);
      expect(result, equals(31.69));
    }, skip: false);

    test('age on Mercury', () {
      final result = spaceAge.age('Mercury', 2134835688);
      expect(result, equals(280.88));
    }, skip: true);

    test('age on Venus', () {
      final result = spaceAge.age('Venus', 189839836);
      expect(result, equals(9.78));
    }, skip: true);

    test('age on Mars', () {
      final result = spaceAge.age('Mars', 2129871239);
      expect(result, equals(35.88));
    }, skip: true);

    test('age on Jupiter', () {
      final result = spaceAge.age('Jupiter', 901876382);
      expect(result, equals(2.41));
    }, skip: true);

    test('age on Saturn', () {
      final result = spaceAge.age('Saturn', 2000000000);
      expect(result, equals(2.15));
    }, skip: true);

    test('age on Uranus', () {
      final result = spaceAge.age('Uranus', 1210123456);
      expect(result, equals(0.46));
    }, skip: true);

    test('age on Neptune', () {
      final result = spaceAge.age('Neptune', 1821023456);
      expect(result, equals(0.35));
    }, skip: true);
  });
}
