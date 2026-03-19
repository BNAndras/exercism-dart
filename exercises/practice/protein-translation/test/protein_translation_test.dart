import 'package:protein_translation/protein_translation.dart';
import 'package:test/test.dart';

void main() {
  final proteinTranslation = ProteinTranslation();

  group('ProteinTranslation', () {
    test('Empty RNA sequence results in no proteins', () {
      final result = proteinTranslation.proteins('');
      expect(result, equals(<Object>[]));
    }, skip: false);

    test('Methionine RNA sequence', () {
      final result = proteinTranslation.proteins('AUG');
      expect(result, equals(<String>['Methionine']));
    }, skip: true);

    test('Phenylalanine RNA sequence 1', () {
      final result = proteinTranslation.proteins('UUU');
      expect(result, equals(<String>['Phenylalanine']));
    }, skip: true);

    test('Phenylalanine RNA sequence 2', () {
      final result = proteinTranslation.proteins('UUC');
      expect(result, equals(<String>['Phenylalanine']));
    }, skip: true);

    test('Leucine RNA sequence 1', () {
      final result = proteinTranslation.proteins('UUA');
      expect(result, equals(<String>['Leucine']));
    }, skip: true);

    test('Leucine RNA sequence 2', () {
      final result = proteinTranslation.proteins('UUG');
      expect(result, equals(<String>['Leucine']));
    }, skip: true);

    test('Serine RNA sequence 1', () {
      final result = proteinTranslation.proteins('UCU');
      expect(result, equals(<String>['Serine']));
    }, skip: true);

    test('Serine RNA sequence 2', () {
      final result = proteinTranslation.proteins('UCC');
      expect(result, equals(<String>['Serine']));
    }, skip: true);

    test('Serine RNA sequence 3', () {
      final result = proteinTranslation.proteins('UCA');
      expect(result, equals(<String>['Serine']));
    }, skip: true);

    test('Serine RNA sequence 4', () {
      final result = proteinTranslation.proteins('UCG');
      expect(result, equals(<String>['Serine']));
    }, skip: true);

    test('Tyrosine RNA sequence 1', () {
      final result = proteinTranslation.proteins('UAU');
      expect(result, equals(<String>['Tyrosine']));
    }, skip: true);

    test('Tyrosine RNA sequence 2', () {
      final result = proteinTranslation.proteins('UAC');
      expect(result, equals(<String>['Tyrosine']));
    }, skip: true);

    test('Cysteine RNA sequence 1', () {
      final result = proteinTranslation.proteins('UGU');
      expect(result, equals(<String>['Cysteine']));
    }, skip: true);

    test('Cysteine RNA sequence 2', () {
      final result = proteinTranslation.proteins('UGC');
      expect(result, equals(<String>['Cysteine']));
    }, skip: true);

    test('Tryptophan RNA sequence', () {
      final result = proteinTranslation.proteins('UGG');
      expect(result, equals(<String>['Tryptophan']));
    }, skip: true);

    test('STOP codon RNA sequence 1', () {
      final result = proteinTranslation.proteins('UAA');
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('STOP codon RNA sequence 2', () {
      final result = proteinTranslation.proteins('UAG');
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('STOP codon RNA sequence 3', () {
      final result = proteinTranslation.proteins('UGA');
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('Sequence of two protein codons translates into proteins', () {
      final result = proteinTranslation.proteins('UUUUUU');
      expect(result, equals(<String>['Phenylalanine', 'Phenylalanine']));
    }, skip: true);

    test('Sequence of two different protein codons translates into proteins', () {
      final result = proteinTranslation.proteins('UUAUUG');
      expect(result, equals(<String>['Leucine', 'Leucine']));
    }, skip: true);

    test('Translate RNA strand into correct protein list', () {
      final result = proteinTranslation.proteins('AUGUUUUGG');
      expect(result, equals(<String>['Methionine', 'Phenylalanine', 'Tryptophan']));
    }, skip: true);

    test('Translation stops if STOP codon at beginning of sequence', () {
      final result = proteinTranslation.proteins('UAGUGG');
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('Translation stops if STOP codon at end of two-codon sequence', () {
      final result = proteinTranslation.proteins('UGGUAG');
      expect(result, equals(<String>['Tryptophan']));
    }, skip: true);

    test('Translation stops if STOP codon at end of three-codon sequence', () {
      final result = proteinTranslation.proteins('AUGUUUUAA');
      expect(result, equals(<String>['Methionine', 'Phenylalanine']));
    }, skip: true);

    test('Translation stops if STOP codon in middle of three-codon sequence', () {
      final result = proteinTranslation.proteins('UGGUAGUGG');
      expect(result, equals(<String>['Tryptophan']));
    }, skip: true);

    test('Translation stops if STOP codon in middle of six-codon sequence', () {
      final result = proteinTranslation.proteins('UGGUGUUAUUAAUGGUUU');
      expect(result, equals(<String>['Tryptophan', 'Cysteine', 'Tyrosine']));
    }, skip: true);

    test('Sequence of two non-STOP codons does not translate to a STOP codon', () {
      final result = proteinTranslation.proteins('AUGAUG');
      expect(result, equals(<String>['Methionine', 'Methionine']));
    }, skip: true);

    test('Non-existing codon can\'t translate', () {
      final result = proteinTranslation.proteins('AAA');
      expect(result, equals(<String, String>{'error': 'Invalid codon'}));
    }, skip: true);

    test('Unknown amino acids, not part of a codon, can\'t translate', () {
      final result = proteinTranslation.proteins('XYZ');
      expect(result, equals(<String, String>{'error': 'Invalid codon'}));
    }, skip: true);

    test('Incomplete RNA sequence can\'t translate', () {
      final result = proteinTranslation.proteins('AUGU');
      expect(result, equals(<String, String>{'error': 'Invalid codon'}));
    }, skip: true);

    test('Incomplete RNA sequence can translate if valid until a STOP codon', () {
      final result = proteinTranslation.proteins('UUCUUCUAAUGGU');
      expect(result, equals(<String>['Phenylalanine', 'Phenylalanine']));
    }, skip: true);
  });
}
