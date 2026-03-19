import 'package:proverb/proverb.dart';
import 'package:test/test.dart';

void main() {
  final proverb = Proverb();

  group('Proverb', () {
    test('zero pieces', () {
      final result = proverb.recite(<Object>[]);
      expect(result, equals(<Object>[]));
    }, skip: false);

    test('one piece', () {
      final result = proverb.recite(<String>['nail']);
      expect(result, equals(<String>['And all for the want of a nail.']));
    }, skip: true);

    test('two pieces', () {
      final result = proverb.recite(<String>['nail', 'shoe']);
      expect(result, equals(<String>['For want of a nail the shoe was lost.', 'And all for the want of a nail.']));
    }, skip: true);

    test('three pieces', () {
      final result = proverb.recite(<String>['nail', 'shoe', 'horse']);
      expect(
          result,
          equals(<String>[
            'For want of a nail the shoe was lost.',
            'For want of a shoe the horse was lost.',
            'And all for the want of a nail.'
          ]));
    }, skip: true);

    test('full proverb', () {
      final result = proverb.recite(<String>['nail', 'shoe', 'horse', 'rider', 'message', 'battle', 'kingdom']);
      expect(
          result,
          equals(<String>[
            'For want of a nail the shoe was lost.',
            'For want of a shoe the horse was lost.',
            'For want of a horse the rider was lost.',
            'For want of a rider the message was lost.',
            'For want of a message the battle was lost.',
            'For want of a battle the kingdom was lost.',
            'And all for the want of a nail.'
          ]));
    }, skip: true);

    test('four pieces modernized', () {
      final result = proverb.recite(<String>['pin', 'gun', 'soldier', 'battle']);
      expect(
          result,
          equals(<String>[
            'For want of a pin the gun was lost.',
            'For want of a gun the soldier was lost.',
            'For want of a soldier the battle was lost.',
            'And all for the want of a pin.'
          ]));
    }, skip: true);
  });
}
