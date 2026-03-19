import 'package:house/house.dart';
import 'package:test/test.dart';

void main() {
  final house = House();

  group('House', () {
    test('verse one - the house that jack built', () {
      final result = house.recite(1, 1);
      expect(result, equals(<String>['This is the house that Jack built.']));
    }, skip: false);

    test('verse two - the malt that lay', () {
      final result = house.recite(2, 2);
      expect(result, equals(<String>['This is the malt that lay in the house that Jack built.']));
    }, skip: true);

    test('verse three - the rat that ate', () {
      final result = house.recite(3, 3);
      expect(result, equals(<String>['This is the rat that ate the malt that lay in the house that Jack built.']));
    }, skip: true);

    test('verse four - the cat that killed', () {
      final result = house.recite(4, 4);
      expect(
          result,
          equals(<String>[
            'This is the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse five - the dog that worried', () {
      final result = house.recite(5, 5);
      expect(
          result,
          equals(<String>[
            'This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse six - the cow with the crumpled horn', () {
      final result = house.recite(6, 6);
      expect(
          result,
          equals(<String>[
            'This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse seven - the maiden all forlorn', () {
      final result = house.recite(7, 7);
      expect(
          result,
          equals(<String>[
            'This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse eight - the man all tattered and torn', () {
      final result = house.recite(8, 8);
      expect(
          result,
          equals(<String>[
            'This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse nine - the priest all shaven and shorn', () {
      final result = house.recite(9, 9);
      expect(
          result,
          equals(<String>[
            'This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse 10 - the rooster that crowed in the morn', () {
      final result = house.recite(10, 10);
      expect(
          result,
          equals(<String>[
            'This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse 11 - the farmer sowing his corn', () {
      final result = house.recite(11, 11);
      expect(
          result,
          equals(<String>[
            'This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('verse 12 - the horse and the hound and the horn', () {
      final result = house.recite(12, 12);
      expect(
          result,
          equals(<String>[
            'This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('multiple verses', () {
      final result = house.recite(4, 8);
      expect(
          result,
          equals(<String>[
            'This is the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);

    test('full rhyme', () {
      final result = house.recite(1, 12);
      expect(
          result,
          equals(<String>[
            'This is the house that Jack built.',
            'This is the malt that lay in the house that Jack built.',
            'This is the rat that ate the malt that lay in the house that Jack built.',
            'This is the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.',
            'This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.'
          ]));
    }, skip: true);
  });
}
