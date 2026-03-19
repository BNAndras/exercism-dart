import 'package:robot_simulator/robot_simulator.dart';
import 'package:test/test.dart';

void main() {
  final robotSimulator = RobotSimulator();

  group('RobotSimulator', () {
    group('Create robot', () {
      test('at origin facing north', () {
        final result = robotSimulator.create(<String, int>{'x': 0, 'y': 0}, 'north');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'north'
            }));
      }, skip: false);

      test('at negative position facing south', () {
        final result = robotSimulator.create(<String, int>{'x': -1, 'y': -1}, 'south');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': -1, 'y': -1},
              'direction': 'south'
            }));
      }, skip: true);
    });

    group('Rotating clockwise', () {
      test('changes north to east', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'north', 'R');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'east'
            }));
      }, skip: true);

      test('changes east to south', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'east', 'R');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'south'
            }));
      }, skip: true);

      test('changes south to west', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'south', 'R');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'west'
            }));
      }, skip: true);

      test('changes west to north', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'west', 'R');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'north'
            }));
      }, skip: true);
    });

    group('Rotating counter-clockwise', () {
      test('changes north to west', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'north', 'L');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'west'
            }));
      }, skip: true);

      test('changes west to south', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'west', 'L');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'south'
            }));
      }, skip: true);

      test('changes south to east', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'south', 'L');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'east'
            }));
      }, skip: true);

      test('changes east to north', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'east', 'L');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 0},
              'direction': 'north'
            }));
      }, skip: true);
    });

    group('Moving forward one', () {
      test('facing north increments Y', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'north', 'A');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': 1},
              'direction': 'north'
            }));
      }, skip: true);

      test('facing south decrements Y', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'south', 'A');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 0, 'y': -1},
              'direction': 'south'
            }));
      }, skip: true);

      test('facing east increments X', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'east', 'A');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 1, 'y': 0},
              'direction': 'east'
            }));
      }, skip: true);

      test('facing west decrements X', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'west', 'A');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': -1, 'y': 0},
              'direction': 'west'
            }));
      }, skip: true);
    });

    group('Follow series of instructions', () {
      test('moving east and north from README', () {
        final result = robotSimulator.move(<String, int>{'x': 7, 'y': 3}, 'north', 'RAALAL');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 9, 'y': 4},
              'direction': 'west'
            }));
      }, skip: true);

      test('moving west and north', () {
        final result = robotSimulator.move(<String, int>{'x': 0, 'y': 0}, 'north', 'LAAARALA');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': -4, 'y': 1},
              'direction': 'west'
            }));
      }, skip: true);

      test('moving west and south', () {
        final result = robotSimulator.move(<String, int>{'x': 2, 'y': -7}, 'east', 'RRAAAAALA');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': -3, 'y': -8},
              'direction': 'south'
            }));
      }, skip: true);

      test('moving east and north', () {
        final result = robotSimulator.move(<String, int>{'x': 8, 'y': 4}, 'south', 'LAAARRRALLLL');
        expect(
            result,
            equals(<String, dynamic>{
              'position': <String, int>{'x': 11, 'y': 5},
              'direction': 'north'
            }));
      }, skip: true);
    });
  });
}
