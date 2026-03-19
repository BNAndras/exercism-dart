import 'package:queen_attack/queen_attack.dart';
import 'package:test/test.dart';

void main() {
  final queenAttack = QueenAttack();

  group('QueenAttack', () {
    group('Test creation of Queens with valid and invalid positions', () {
      test('queen with a valid position', () {
        final result = queenAttack.create(<String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 2}
        });
        expect(result, equals(0));
      }, skip: false);

      test('queen must have positive row', () {
        final result = queenAttack.create(<String, Map<String, int>>{
          'position': <String, int>{'row': -2, 'column': 2}
        });
        expect(result, equals(<String, String>{'error': 'row not positive'}));
      }, skip: true);

      test('queen must have row on board', () {
        final result = queenAttack.create(<String, Map<String, int>>{
          'position': <String, int>{'row': 8, 'column': 4}
        });
        expect(result, equals(<String, String>{'error': 'row not on board'}));
      }, skip: true);

      test('queen must have positive column', () {
        final result = queenAttack.create(<String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': -2}
        });
        expect(result, equals(<String, String>{'error': 'column not positive'}));
      }, skip: true);

      test('queen must have column on board', () {
        final result = queenAttack.create(<String, Map<String, int>>{
          'position': <String, int>{'row': 4, 'column': 8}
        });
        expect(result, equals(<String, String>{'error': 'column not on board'}));
      }, skip: true);
    });

    group('Test the ability of one queen to attack another', () {
      test('cannot attack', () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 4}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 6, 'column': 6}
        });
        expect(result, equals(false));
      }, skip: true);

      test('can attack on same row', () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 4}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 6}
        });
        expect(result, equals(true));
      }, skip: true);

      test('can attack on same column', () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 4, 'column': 5}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 5}
        });
        expect(result, equals(true));
      }, skip: true);

      test('can attack on first diagonal', () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 2}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 0, 'column': 4}
        });
        expect(result, equals(true));
      }, skip: true);

      test('can attack on second diagonal', () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 2}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 3, 'column': 1}
        });
        expect(result, equals(true));
      }, skip: true);

      test('can attack on third diagonal', () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 2}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 1, 'column': 1}
        });
        expect(result, equals(true));
      }, skip: true);

      test('can attack on fourth diagonal', () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 1, 'column': 7}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 0, 'column': 6}
        });
        expect(result, equals(true));
      }, skip: true);

      test('cannot attack if falling diagonals are only the same when reflected across the longest falling diagonal',
          () {
        final result = queenAttack.canAttack(<String, Map<String, int>>{
          'position': <String, int>{'row': 4, 'column': 1}
        }, <String, Map<String, int>>{
          'position': <String, int>{'row': 2, 'column': 5}
        });
        expect(result, equals(false));
      }, skip: true);
    });
  });
}
