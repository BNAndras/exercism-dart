import 'package:reverse_string/reverse_string.dart';
import 'package:test/test.dart';

void main() {
  final reverseString = ReverseString();

  group('ReverseString', () {
    test('an empty string', () {
      final result = reverseString.reverse('');
      expect(result, equals(''));
    }, skip: false);

    test('a word', () {
      final result = reverseString.reverse('robot');
      expect(result, equals('tobor'));
    }, skip: true);

    test('a capitalized word', () {
      final result = reverseString.reverse('Ramen');
      expect(result, equals('nemaR'));
    }, skip: true);

    test('a sentence with punctuation', () {
      final result = reverseString.reverse('I\'m hungry!');
      expect(result, equals('!yrgnuh m\'I'));
    }, skip: true);

    test('a palindrome', () {
      final result = reverseString.reverse('racecar');
      expect(result, equals('racecar'));
    }, skip: true);

    test('an even-sized word', () {
      final result = reverseString.reverse('drawer');
      expect(result, equals('reward'));
    }, skip: true);

    test('wide characters', () {
      final result = reverseString.reverse('子猫');
      expect(result, equals('猫子'));
    }, skip: true);
  });
}
