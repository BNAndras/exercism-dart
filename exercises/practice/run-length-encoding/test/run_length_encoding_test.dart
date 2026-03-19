import 'package:run_length_encoding/run_length_encoding.dart';
import 'package:test/test.dart';

void main() {
  final runLengthEncoding = RunLengthEncoding();

  group('RunLengthEncoding', () {
    group('run-length encode a string', () {
      test('empty string', () {
        final result = runLengthEncoding.encode('');
        expect(result, equals(''));
      }, skip: false);

      test('single characters only are encoded without count', () {
        final result = runLengthEncoding.encode('XYZ');
        expect(result, equals('XYZ'));
      }, skip: true);

      test('string with no single characters', () {
        final result = runLengthEncoding.encode('AABBBCCCC');
        expect(result, equals('2A3B4C'));
      }, skip: true);

      test('single characters mixed with repeated characters', () {
        final result = runLengthEncoding.encode('WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB');
        expect(result, equals('12WB12W3B24WB'));
      }, skip: true);

      test('multiple whitespace mixed in string', () {
        final result = runLengthEncoding.encode('  hsqq qww  ');
        expect(result, equals('2 hs2q q2w2 '));
      }, skip: true);

      test('lowercase characters', () {
        final result = runLengthEncoding.encode('aabbbcccc');
        expect(result, equals('2a3b4c'));
      }, skip: true);
    });

    group('run-length decode a string', () {
      test('empty string', () {
        final result = runLengthEncoding.decode('');
        expect(result, equals(''));
      }, skip: true);

      test('single characters only', () {
        final result = runLengthEncoding.decode('XYZ');
        expect(result, equals('XYZ'));
      }, skip: true);

      test('string with no single characters', () {
        final result = runLengthEncoding.decode('2A3B4C');
        expect(result, equals('AABBBCCCC'));
      }, skip: true);

      test('single characters with repeated characters', () {
        final result = runLengthEncoding.decode('12WB12W3B24WB');
        expect(result, equals('WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'));
      }, skip: true);

      test('multiple whitespace mixed in string', () {
        final result = runLengthEncoding.decode('2 hs2q q2w2 ');
        expect(result, equals('  hsqq qww  '));
      }, skip: true);

      test('lowercase string', () {
        final result = runLengthEncoding.decode('2a3b4c');
        expect(result, equals('aabbbcccc'));
      }, skip: true);
    });

    group('encode and then decode', () {
      test('encode followed by decode gives original string', () {
        final result = runLengthEncoding.consistency('zzz ZZ  zZ');
        expect(result, equals('zzz ZZ  zZ'));
      }, skip: true);
    });
  });
}
