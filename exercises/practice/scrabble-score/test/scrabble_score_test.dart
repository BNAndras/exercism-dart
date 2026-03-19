import 'package:scrabble_score/scrabble_score.dart';
import 'package:test/test.dart';

void main() {
  final scrabbleScore = ScrabbleScore();

  group('ScrabbleScore', () {
    test('lowercase letter', () {
      final result = scrabbleScore.score('a');
      expect(result, equals(1));
    }, skip: false);

    test('uppercase letter', () {
      final result = scrabbleScore.score('A');
      expect(result, equals(1));
    }, skip: true);

    test('valuable letter', () {
      final result = scrabbleScore.score('f');
      expect(result, equals(4));
    }, skip: true);

    test('short word', () {
      final result = scrabbleScore.score('at');
      expect(result, equals(2));
    }, skip: true);

    test('short, valuable word', () {
      final result = scrabbleScore.score('zoo');
      expect(result, equals(12));
    }, skip: true);

    test('medium word', () {
      final result = scrabbleScore.score('street');
      expect(result, equals(6));
    }, skip: true);

    test('medium, valuable word', () {
      final result = scrabbleScore.score('quirky');
      expect(result, equals(22));
    }, skip: true);

    test('long, mixed-case word', () {
      final result = scrabbleScore.score('OxyphenButazone');
      expect(result, equals(41));
    }, skip: true);

    test('english-like word', () {
      final result = scrabbleScore.score('pinata');
      expect(result, equals(8));
    }, skip: true);

    test('empty input', () {
      final result = scrabbleScore.score('');
      expect(result, equals(0));
    }, skip: true);

    test('entire alphabet available', () {
      final result = scrabbleScore.score('abcdefghijklmnopqrstuvwxyz');
      expect(result, equals(87));
    }, skip: true);
  });
}
