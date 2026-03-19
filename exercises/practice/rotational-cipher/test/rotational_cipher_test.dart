import 'package:rotational_cipher/rotational_cipher.dart';
import 'package:test/test.dart';

void main() {
  final rotationalCipher = RotationalCipher();

  group('RotationalCipher', () {
    test('rotate a by 0, same output as input', () {
      final result = rotationalCipher.rotate('a', 0);
      expect(result, equals('a'));
    }, skip: false);

    test('rotate a by 1', () {
      final result = rotationalCipher.rotate('a', 1);
      expect(result, equals('b'));
    }, skip: true);

    test('rotate a by 26, same output as input', () {
      final result = rotationalCipher.rotate('a', 26);
      expect(result, equals('a'));
    }, skip: true);

    test('rotate m by 13', () {
      final result = rotationalCipher.rotate('m', 13);
      expect(result, equals('z'));
    }, skip: true);

    test('rotate n by 13 with wrap around alphabet', () {
      final result = rotationalCipher.rotate('n', 13);
      expect(result, equals('a'));
    }, skip: true);

    test('rotate capital letters', () {
      final result = rotationalCipher.rotate('OMG', 5);
      expect(result, equals('TRL'));
    }, skip: true);

    test('rotate spaces', () {
      final result = rotationalCipher.rotate('O M G', 5);
      expect(result, equals('T R L'));
    }, skip: true);

    test('rotate numbers', () {
      final result = rotationalCipher.rotate('Testing 1 2 3 testing', 4);
      expect(result, equals('Xiwxmrk 1 2 3 xiwxmrk'));
    }, skip: true);

    test('rotate punctuation', () {
      final result = rotationalCipher.rotate('Let\'s eat, Grandma!', 21);
      expect(result, equals('Gzo\'n zvo, Bmviyhv!'));
    }, skip: true);

    test('rotate all letters', () {
      final result = rotationalCipher.rotate('The quick brown fox jumps over the lazy dog.', 13);
      expect(result, equals('Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'));
    }, skip: true);
  });
}
