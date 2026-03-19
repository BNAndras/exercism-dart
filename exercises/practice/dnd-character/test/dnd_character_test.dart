import 'package:dnd_character/dnd_character.dart';
import 'package:test/test.dart';

void main() {
  final dndCharacter = DndCharacter();

  group('DndCharacter', () {
    group('ability modifier', () {
      test('ability modifier for score 3 is -4', () {
        final result = dndCharacter.modifier(3);
        expect(result, equals(-4));
      }, skip: false);

      test('ability modifier for score 4 is -3', () {
        final result = dndCharacter.modifier(4);
        expect(result, equals(-3));
      }, skip: true);

      test('ability modifier for score 5 is -3', () {
        final result = dndCharacter.modifier(5);
        expect(result, equals(-3));
      }, skip: true);

      test('ability modifier for score 6 is -2', () {
        final result = dndCharacter.modifier(6);
        expect(result, equals(-2));
      }, skip: true);

      test('ability modifier for score 7 is -2', () {
        final result = dndCharacter.modifier(7);
        expect(result, equals(-2));
      }, skip: true);

      test('ability modifier for score 8 is -1', () {
        final result = dndCharacter.modifier(8);
        expect(result, equals(-1));
      }, skip: true);

      test('ability modifier for score 9 is -1', () {
        final result = dndCharacter.modifier(9);
        expect(result, equals(-1));
      }, skip: true);

      test('ability modifier for score 10 is 0', () {
        final result = dndCharacter.modifier(10);
        expect(result, equals(0));
      }, skip: true);

      test('ability modifier for score 11 is 0', () {
        final result = dndCharacter.modifier(11);
        expect(result, equals(0));
      }, skip: true);

      test('ability modifier for score 12 is +1', () {
        final result = dndCharacter.modifier(12);
        expect(result, equals(1));
      }, skip: true);

      test('ability modifier for score 13 is +1', () {
        final result = dndCharacter.modifier(13);
        expect(result, equals(1));
      }, skip: true);

      test('ability modifier for score 14 is +2', () {
        final result = dndCharacter.modifier(14);
        expect(result, equals(2));
      }, skip: true);

      test('ability modifier for score 15 is +2', () {
        final result = dndCharacter.modifier(15);
        expect(result, equals(2));
      }, skip: true);

      test('ability modifier for score 16 is +3', () {
        final result = dndCharacter.modifier(16);
        expect(result, equals(3));
      }, skip: true);

      test('ability modifier for score 17 is +3', () {
        final result = dndCharacter.modifier(17);
        expect(result, equals(3));
      }, skip: true);

      test('ability modifier for score 18 is +4', () {
        final result = dndCharacter.modifier(18);
        expect(result, equals(4));
      }, skip: true);
    });

    test('random ability is within range', () {
      final result = dndCharacter.ability();
      expect(result, equals('score >= 3 && score <= 18'));
    }, skip: true);

    test('random character is valid', () {
      final result = dndCharacter.character();
      expect(
          result,
          equals(<String, String>{
            'strength': 'strength >= 3 && strength <= 18',
            'dexterity': 'dexterity >= 3 && dexterity <= 18',
            'constitution': 'constitution >= 3 && constitution <= 18',
            'intelligence': 'intelligence >= 3 && intelligence <= 18',
            'wisdom': 'wisdom >= 3 && wisdom <= 18',
            'charisma': 'charisma >= 3 && charisma <= 18',
            'hitpoints': 'hitpoints == 10 + modifier(constitution)'
          }));
    }, skip: true);

    test('each ability is only calculated once', () {
      final result = dndCharacter.character();
      expect(
          result,
          equals(<String, String>{
            'strength': 'strength == strength',
            'dexterity': 'dexterity == dexterity',
            'constitution': 'constitution == constitution',
            'intelligence': 'intelligence == intelligence',
            'wisdom': 'wisdom == wisdom',
            'charisma': 'charisma == charisma'
          }));
    }, skip: true);
  });
}
