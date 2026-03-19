import 'package:hamming/hamming.dart';
import 'package:test/test.dart';

void main() {
  final hamming = Hamming();

  group('Hamming', () {
    test('empty strands', () {
      final result = hamming.distance('', '');
      expect(result, equals(0));
    }, skip: false);

    test('single letter identical strands', () {
      final result = hamming.distance('A', 'A');
      expect(result, equals(0));
    }, skip: true);

    test('single letter different strands', () {
      final result = hamming.distance('G', 'T');
      expect(result, equals(1));
    }, skip: true);

    test('long identical strands', () {
      final result = hamming.distance('GGACTGAAATCTG', 'GGACTGAAATCTG');
      expect(result, equals(0));
    }, skip: true);

    test('long different strands', () {
      final result = hamming.distance('GGACGGATTCTG', 'AGGACGGATTCT');
      expect(result, equals(9));
    }, skip: true);

    test('disallow first strand longer', () {
      final result = hamming.distance('AATG', 'AAA');
      expect(result, equals(<String, String>{'error': 'strands must be of equal length'}));
    }, skip: true);

    test('disallow second strand longer', () {
      final result = hamming.distance('ATA', 'AGTG');
      expect(result, equals(<String, String>{'error': 'strands must be of equal length'}));
    }, skip: true);

    test('disallow empty first strand', () {
      final result = hamming.distance('', 'G');
      expect(result, equals(<String, String>{'error': 'strands must be of equal length'}));
    }, skip: true);

    test('disallow empty second strand', () {
      final result = hamming.distance('G', '');
      expect(result, equals(<String, String>{'error': 'strands must be of equal length'}));
    }, skip: true);
  });
}
