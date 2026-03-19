import 'package:nucleotide_count/nucleotide_count.dart';
import 'package:test/test.dart';

void main() {
  final nucleotideCount = NucleotideCount();

  group('NucleotideCount', () {
    test('empty strand', () {
      final result = nucleotideCount.nucleotideCounts('');
      expect(result, equals(<String, int>{'A': 0, 'C': 0, 'G': 0, 'T': 0}));
    }, skip: false);

    test('can count one nucleotide in single-character input', () {
      final result = nucleotideCount.nucleotideCounts('G');
      expect(result, equals(<String, int>{'A': 0, 'C': 0, 'G': 1, 'T': 0}));
    }, skip: true);

    test('strand with repeated nucleotide', () {
      final result = nucleotideCount.nucleotideCounts('GGGGGGG');
      expect(result, equals(<String, int>{'A': 0, 'C': 0, 'G': 7, 'T': 0}));
    }, skip: true);

    test('strand with multiple nucleotides', () {
      final result =
          nucleotideCount.nucleotideCounts('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC');
      expect(result, equals(<String, int>{'A': 20, 'C': 12, 'G': 17, 'T': 21}));
    }, skip: true);

    test('strand with invalid nucleotides', () {
      final result = nucleotideCount.nucleotideCounts('AGXXACT');
      expect(result, equals(<String, String>{'error': 'Invalid nucleotide in strand'}));
    }, skip: true);
  });
}
