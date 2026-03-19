import 'package:phone_number/phone_number.dart';
import 'package:test/test.dart';

void main() {
  final phoneNumber = PhoneNumber();

  group('PhoneNumber', () {
    test('cleans the number', () {
      final result = phoneNumber.clean('(223) 456-7890');
      expect(result, equals('2234567890'));
    }, skip: false);

    test('cleans numbers with dots', () {
      final result = phoneNumber.clean('223.456.7890');
      expect(result, equals('2234567890'));
    }, skip: true);

    test('cleans numbers with multiple spaces', () {
      final result = phoneNumber.clean('223 456   7890   ');
      expect(result, equals('2234567890'));
    }, skip: true);

    test('invalid when 9 digits', () {
      final result = phoneNumber.clean('123456789');
      expect(result, equals(<String, String>{'error': 'must not be fewer than 10 digits'}));
    }, skip: true);

    test('invalid when 11 digits does not start with a 1', () {
      final result = phoneNumber.clean('22234567890');
      expect(result, equals(<String, String>{'error': '11 digits must start with 1'}));
    }, skip: true);

    test('valid when 11 digits and starting with 1', () {
      final result = phoneNumber.clean('12234567890');
      expect(result, equals('2234567890'));
    }, skip: true);

    test('valid when 11 digits and starting with 1 even with punctuation', () {
      final result = phoneNumber.clean('+1 (223) 456-7890');
      expect(result, equals('2234567890'));
    }, skip: true);

    test('invalid when more than 11 digits', () {
      final result = phoneNumber.clean('321234567890');
      expect(result, equals(<String, String>{'error': 'must not be greater than 11 digits'}));
    }, skip: true);

    test('invalid with letters', () {
      final result = phoneNumber.clean('523-abc-7890');
      expect(result, equals(<String, String>{'error': 'letters not permitted'}));
    }, skip: true);

    test('invalid with punctuations', () {
      final result = phoneNumber.clean('523-@:!-7890');
      expect(result, equals(<String, String>{'error': 'punctuations not permitted'}));
    }, skip: true);

    test('invalid if area code starts with 0', () {
      final result = phoneNumber.clean('(023) 456-7890');
      expect(result, equals(<String, String>{'error': 'area code cannot start with zero'}));
    }, skip: true);

    test('invalid if area code starts with 1', () {
      final result = phoneNumber.clean('(123) 456-7890');
      expect(result, equals(<String, String>{'error': 'area code cannot start with one'}));
    }, skip: true);

    test('invalid if exchange code starts with 0', () {
      final result = phoneNumber.clean('(223) 056-7890');
      expect(result, equals(<String, String>{'error': 'exchange code cannot start with zero'}));
    }, skip: true);

    test('invalid if exchange code starts with 1', () {
      final result = phoneNumber.clean('(223) 156-7890');
      expect(result, equals(<String, String>{'error': 'exchange code cannot start with one'}));
    }, skip: true);

    test('invalid if area code starts with 0 on valid 11-digit number', () {
      final result = phoneNumber.clean('1 (023) 456-7890');
      expect(result, equals(<String, String>{'error': 'area code cannot start with zero'}));
    }, skip: true);

    test('invalid if area code starts with 1 on valid 11-digit number', () {
      final result = phoneNumber.clean('1 (123) 456-7890');
      expect(result, equals(<String, String>{'error': 'area code cannot start with one'}));
    }, skip: true);

    test('invalid if exchange code starts with 0 on valid 11-digit number', () {
      final result = phoneNumber.clean('1 (223) 056-7890');
      expect(result, equals(<String, String>{'error': 'exchange code cannot start with zero'}));
    }, skip: true);

    test('invalid if exchange code starts with 1 on valid 11-digit number', () {
      final result = phoneNumber.clean('1 (223) 156-7890');
      expect(result, equals(<String, String>{'error': 'exchange code cannot start with one'}));
    }, skip: true);
  });
}
