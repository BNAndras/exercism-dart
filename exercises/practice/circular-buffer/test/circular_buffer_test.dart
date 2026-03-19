import 'package:circular_buffer/circular_buffer.dart';
import 'package:test/test.dart';

void main() {
  final circularBuffer = CircularBuffer();

  group('CircularBuffer', () {
    test('reading empty buffer should fail', () {
      final result = circularBuffer.run(1, <Map<String, Object>>[
        <String, dynamic>{'operation': 'read', 'should_succeed': false}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: false);

    test('can read an item just written', () {
      final result = circularBuffer.run(1, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('each item may only be read once', () {
      final result = circularBuffer.run(1, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1},
        <String, dynamic>{'operation': 'read', 'should_succeed': false}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('items are read in the order they are written', () {
      final result = circularBuffer.run(2, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 2}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('full buffer can\'t be written to', () {
      final result = circularBuffer.run(1, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': false}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('a read frees up capacity for another write', () {
      final result = circularBuffer.run(1, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 2}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('read position is maintained even across multiple writes', () {
      final result = circularBuffer.run(3, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1},
        <String, dynamic>{'operation': 'write', 'item': 3, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 2},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 3}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('items cleared out of buffer can\'t be read', () {
      final result = circularBuffer.run(1, <Object>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, String>{'operation': 'clear'},
        <String, dynamic>{'operation': 'read', 'should_succeed': false}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('clear frees up capacity for another write', () {
      final result = circularBuffer.run(1, <Object>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, String>{'operation': 'clear'},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 2}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('clear does nothing on empty buffer', () {
      final result = circularBuffer.run(1, <Object>[
        <String, String>{'operation': 'clear'},
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('overwrite acts like write on non-full buffer', () {
      final result = circularBuffer.run(2, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'overwrite', 'item': 2},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 2}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('overwrite replaces the oldest item on full buffer', () {
      final result = circularBuffer.run(2, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': true},
        <String, dynamic>{'operation': 'overwrite', 'item': 3},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 2},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 3}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('overwrite replaces the oldest item remaining in buffer following a read', () {
      final result = circularBuffer.run(3, <Map<String, Object>>[
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': true},
        <String, dynamic>{'operation': 'write', 'item': 3, 'should_succeed': true},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 1},
        <String, dynamic>{'operation': 'write', 'item': 4, 'should_succeed': true},
        <String, dynamic>{'operation': 'overwrite', 'item': 5},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 3},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 4},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 5}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);

    test('initial clear does not affect wrapping around', () {
      final result = circularBuffer.run(2, <Object>[
        <String, String>{'operation': 'clear'},
        <String, dynamic>{'operation': 'write', 'item': 1, 'should_succeed': true},
        <String, dynamic>{'operation': 'write', 'item': 2, 'should_succeed': true},
        <String, dynamic>{'operation': 'overwrite', 'item': 3},
        <String, dynamic>{'operation': 'overwrite', 'item': 4},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 3},
        <String, dynamic>{'operation': 'read', 'should_succeed': true, 'expected': 4},
        <String, dynamic>{'operation': 'read', 'should_succeed': false}
      ]);
      expect(result, equals(<dynamic, dynamic>{}));
    }, skip: true);
  });
}
