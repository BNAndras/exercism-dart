import 'package:roman_numerals/roman_numerals.dart';
import 'package:test/test.dart';

void main() {
  final romanNumerals = RomanNumerals();

  group('RomanNumerals', () {
    test('1 is I', () {
      final result = romanNumerals.roman(1);
      expect(result, equals('I'));
    }, skip: false);

    test('2 is II', () {
      final result = romanNumerals.roman(2);
      expect(result, equals('II'));
    }, skip: true);

    test('3 is III', () {
      final result = romanNumerals.roman(3);
      expect(result, equals('III'));
    }, skip: true);

    test('4 is IV', () {
      final result = romanNumerals.roman(4);
      expect(result, equals('IV'));
    }, skip: true);

    test('5 is V', () {
      final result = romanNumerals.roman(5);
      expect(result, equals('V'));
    }, skip: true);

    test('6 is VI', () {
      final result = romanNumerals.roman(6);
      expect(result, equals('VI'));
    }, skip: true);

    test('9 is IX', () {
      final result = romanNumerals.roman(9);
      expect(result, equals('IX'));
    }, skip: true);

    test('16 is XVI', () {
      final result = romanNumerals.roman(16);
      expect(result, equals('XVI'));
    }, skip: true);

    test('27 is XXVII', () {
      final result = romanNumerals.roman(27);
      expect(result, equals('XXVII'));
    }, skip: true);

    test('48 is XLVIII', () {
      final result = romanNumerals.roman(48);
      expect(result, equals('XLVIII'));
    }, skip: true);

    test('49 is XLIX', () {
      final result = romanNumerals.roman(49);
      expect(result, equals('XLIX'));
    }, skip: true);

    test('59 is LIX', () {
      final result = romanNumerals.roman(59);
      expect(result, equals('LIX'));
    }, skip: true);

    test('66 is LXVI', () {
      final result = romanNumerals.roman(66);
      expect(result, equals('LXVI'));
    }, skip: true);

    test('93 is XCIII', () {
      final result = romanNumerals.roman(93);
      expect(result, equals('XCIII'));
    }, skip: true);

    test('141 is CXLI', () {
      final result = romanNumerals.roman(141);
      expect(result, equals('CXLI'));
    }, skip: true);

    test('163 is CLXIII', () {
      final result = romanNumerals.roman(163);
      expect(result, equals('CLXIII'));
    }, skip: true);

    test('166 is CLXVI', () {
      final result = romanNumerals.roman(166);
      expect(result, equals('CLXVI'));
    }, skip: true);

    test('402 is CDII', () {
      final result = romanNumerals.roman(402);
      expect(result, equals('CDII'));
    }, skip: true);

    test('575 is DLXXV', () {
      final result = romanNumerals.roman(575);
      expect(result, equals('DLXXV'));
    }, skip: true);

    test('666 is DCLXVI', () {
      final result = romanNumerals.roman(666);
      expect(result, equals('DCLXVI'));
    }, skip: true);

    test('911 is CMXI', () {
      final result = romanNumerals.roman(911);
      expect(result, equals('CMXI'));
    }, skip: true);

    test('1024 is MXXIV', () {
      final result = romanNumerals.roman(1024);
      expect(result, equals('MXXIV'));
    }, skip: true);

    test('1666 is MDCLXVI', () {
      final result = romanNumerals.roman(1666);
      expect(result, equals('MDCLXVI'));
    }, skip: true);

    test('3000 is MMM', () {
      final result = romanNumerals.roman(3000);
      expect(result, equals('MMM'));
    }, skip: true);

    test('3001 is MMMI', () {
      final result = romanNumerals.roman(3001);
      expect(result, equals('MMMI'));
    }, skip: true);

    test('3888 is MMMDCCCLXXXVIII', () {
      final result = romanNumerals.roman(3888);
      expect(result, equals('MMMDCCCLXXXVIII'));
    }, skip: true);

    test('3999 is MMMCMXCIX', () {
      final result = romanNumerals.roman(3999);
      expect(result, equals('MMMCMXCIX'));
    }, skip: true);
  });
}
