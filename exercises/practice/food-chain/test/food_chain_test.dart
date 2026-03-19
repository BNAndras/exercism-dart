import 'package:food_chain/food_chain.dart';
import 'package:test/test.dart';

void main() {
  final foodChain = FoodChain();

  group('FoodChain', () {
    test('fly', () {
      final result = foodChain.recite(1, 1);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: false);

    test('spider', () {
      final result = foodChain.recite(2, 2);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a spider.',
            'It wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: true);

    test('bird', () {
      final result = foodChain.recite(3, 3);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a bird.',
            'How absurd to swallow a bird!',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: true);

    test('cat', () {
      final result = foodChain.recite(4, 4);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a cat.',
            'Imagine that, to swallow a cat!',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: true);

    test('dog', () {
      final result = foodChain.recite(5, 5);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a dog.',
            'What a hog, to swallow a dog!',
            'She swallowed the dog to catch the cat.',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: true);

    test('goat', () {
      final result = foodChain.recite(6, 6);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a goat.',
            'Just opened her throat and swallowed a goat!',
            'She swallowed the goat to catch the dog.',
            'She swallowed the dog to catch the cat.',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: true);

    test('cow', () {
      final result = foodChain.recite(7, 7);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a cow.',
            'I don\'t know how she swallowed a cow!',
            'She swallowed the cow to catch the goat.',
            'She swallowed the goat to catch the dog.',
            'She swallowed the dog to catch the cat.',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: true);

    test('horse', () {
      final result = foodChain.recite(8, 8);
      expect(result, equals(<String>['I know an old lady who swallowed a horse.', 'She\'s dead, of course!']));
    }, skip: true);

    test('multiple verses', () {
      final result = foodChain.recite(1, 3);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a spider.',
            'It wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a bird.',
            'How absurd to swallow a bird!',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.'
          ]));
    }, skip: true);

    test('full song', () {
      final result = foodChain.recite(1, 8);
      expect(
          result,
          equals(<String>[
            'I know an old lady who swallowed a fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a spider.',
            'It wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a bird.',
            'How absurd to swallow a bird!',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a cat.',
            'Imagine that, to swallow a cat!',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a dog.',
            'What a hog, to swallow a dog!',
            'She swallowed the dog to catch the cat.',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a goat.',
            'Just opened her throat and swallowed a goat!',
            'She swallowed the goat to catch the dog.',
            'She swallowed the dog to catch the cat.',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a cow.',
            'I don\'t know how she swallowed a cow!',
            'She swallowed the cow to catch the goat.',
            'She swallowed the goat to catch the dog.',
            'She swallowed the dog to catch the cat.',
            'She swallowed the cat to catch the bird.',
            'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.',
            'She swallowed the spider to catch the fly.',
            'I don\'t know why she swallowed the fly. Perhaps she\'ll die.',
            '',
            'I know an old lady who swallowed a horse.',
            'She\'s dead, of course!'
          ]));
    }, skip: true);
  });
}
