import 'package:forth/forth.dart';
import 'package:test/test.dart';

void main() {
  final forth = Forth();

  group('Forth', () {
    group('parsing and numbers', () {
      test('numbers just get pushed onto the stack', () {
        final result = forth.evaluate(<String>['1 2 3 4 5']);
        expect(result, equals(<int>[1, 2, 3, 4, 5]));
      }, skip: false);

      test('pushes negative numbers onto the stack', () {
        final result = forth.evaluate(<String>['-1 -2 -3 -4 -5']);
        expect(result, equals(<int>[-1, -2, -3, -4, -5]));
      }, skip: true);
    });

    group('addition', () {
      test('can add two numbers', () {
        final result = forth.evaluate(<String>['1 2 +']);
        expect(result, equals(<int>[3]));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['+']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);

      test('errors if there is only one value on the stack', () {
        final result = forth.evaluate(<String>['1 +']);
        expect(result, equals(<String, String>{'error': 'only one value on the stack'}));
      }, skip: true);

      test('more than two values on the stack', () {
        final result = forth.evaluate(<String>['1 2 3 +']);
        expect(result, equals(<int>[1, 5]));
      }, skip: true);
    });

    group('subtraction', () {
      test('can subtract two numbers', () {
        final result = forth.evaluate(<String>['3 4 -']);
        expect(result, equals(<int>[-1]));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['-']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);

      test('errors if there is only one value on the stack', () {
        final result = forth.evaluate(<String>['1 -']);
        expect(result, equals(<String, String>{'error': 'only one value on the stack'}));
      }, skip: true);

      test('more than two values on the stack', () {
        final result = forth.evaluate(<String>['1 12 3 -']);
        expect(result, equals(<int>[1, 9]));
      }, skip: true);
    });

    group('multiplication', () {
      test('can multiply two numbers', () {
        final result = forth.evaluate(<String>['2 4 *']);
        expect(result, equals(<int>[8]));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['*']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);

      test('errors if there is only one value on the stack', () {
        final result = forth.evaluate(<String>['1 *']);
        expect(result, equals(<String, String>{'error': 'only one value on the stack'}));
      }, skip: true);

      test('more than two values on the stack', () {
        final result = forth.evaluate(<String>['1 2 3 *']);
        expect(result, equals(<int>[1, 6]));
      }, skip: true);
    });

    group('division', () {
      test('can divide two numbers', () {
        final result = forth.evaluate(<String>['12 3 /']);
        expect(result, equals(<int>[4]));
      }, skip: true);

      test('performs integer division', () {
        final result = forth.evaluate(<String>['8 3 /']);
        expect(result, equals(<int>[2]));
      }, skip: true);

      test('errors if dividing by zero', () {
        final result = forth.evaluate(<String>['4 0 /']);
        expect(result, equals(<String, String>{'error': 'divide by zero'}));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['/']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);

      test('errors if there is only one value on the stack', () {
        final result = forth.evaluate(<String>['1 /']);
        expect(result, equals(<String, String>{'error': 'only one value on the stack'}));
      }, skip: true);

      test('more than two values on the stack', () {
        final result = forth.evaluate(<String>['1 12 3 /']);
        expect(result, equals(<int>[1, 4]));
      }, skip: true);
    });

    group('combined arithmetic', () {
      test('addition and subtraction', () {
        final result = forth.evaluate(<String>['1 2 + 4 -']);
        expect(result, equals(<int>[-1]));
      }, skip: true);

      test('multiplication and division', () {
        final result = forth.evaluate(<String>['2 4 * 3 /']);
        expect(result, equals(<int>[2]));
      }, skip: true);

      test('multiplication and addition', () {
        final result = forth.evaluate(<String>['1 3 4 * +']);
        expect(result, equals(<int>[13]));
      }, skip: true);

      test('addition and multiplication', () {
        final result = forth.evaluate(<String>['1 3 4 + *']);
        expect(result, equals(<int>[7]));
      }, skip: true);
    });

    group('dup', () {
      test('copies a value on the stack', () {
        final result = forth.evaluate(<String>['1 dup']);
        expect(result, equals(<int>[1, 1]));
      }, skip: true);

      test('copies the top value on the stack', () {
        final result = forth.evaluate(<String>['1 2 dup']);
        expect(result, equals(<int>[1, 2, 2]));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['dup']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);
    });

    group('drop', () {
      test('removes the top value on the stack if it is the only one', () {
        final result = forth.evaluate(<String>['1 drop']);
        expect(result, equals(<Object>[]));
      }, skip: true);

      test('removes the top value on the stack if it is not the only one', () {
        final result = forth.evaluate(<String>['1 2 drop']);
        expect(result, equals(<int>[1]));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['drop']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);
    });

    group('swap', () {
      test('swaps the top two values on the stack if they are the only ones', () {
        final result = forth.evaluate(<String>['1 2 swap']);
        expect(result, equals(<int>[2, 1]));
      }, skip: true);

      test('swaps the top two values on the stack if they are not the only ones', () {
        final result = forth.evaluate(<String>['1 2 3 swap']);
        expect(result, equals(<int>[1, 3, 2]));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['swap']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);

      test('errors if there is only one value on the stack', () {
        final result = forth.evaluate(<String>['1 swap']);
        expect(result, equals(<String, String>{'error': 'only one value on the stack'}));
      }, skip: true);
    });

    group('over', () {
      test('copies the second element if there are only two', () {
        final result = forth.evaluate(<String>['1 2 over']);
        expect(result, equals(<int>[1, 2, 1]));
      }, skip: true);

      test('copies the second element if there are more than two', () {
        final result = forth.evaluate(<String>['1 2 3 over']);
        expect(result, equals(<int>[1, 2, 3, 2]));
      }, skip: true);

      test('errors if there is nothing on the stack', () {
        final result = forth.evaluate(<String>['over']);
        expect(result, equals(<String, String>{'error': 'empty stack'}));
      }, skip: true);

      test('errors if there is only one value on the stack', () {
        final result = forth.evaluate(<String>['1 over']);
        expect(result, equals(<String, String>{'error': 'only one value on the stack'}));
      }, skip: true);
    });

    group('user-defined words', () {
      test('can consist of built-in words', () {
        final result = forth.evaluate(<String>[': dup-twice dup dup ;', '1 dup-twice']);
        expect(result, equals(<int>[1, 1, 1]));
      }, skip: true);

      test('execute in the right order', () {
        final result = forth.evaluate(<String>[': countup 1 2 3 ;', 'countup']);
        expect(result, equals(<int>[1, 2, 3]));
      }, skip: true);

      test('can override other user-defined words', () {
        final result = forth.evaluate(<String>[': foo dup ;', ': foo dup dup ;', '1 foo']);
        expect(result, equals(<int>[1, 1, 1]));
      }, skip: true);

      test('can override built-in words', () {
        final result = forth.evaluate(<String>[': swap dup ;', '1 swap']);
        expect(result, equals(<int>[1, 1]));
      }, skip: true);

      test('can override built-in operators', () {
        final result = forth.evaluate(<String>[': + * ;', '3 4 +']);
        expect(result, equals(<int>[12]));
      }, skip: true);

      test('can use different words with the same name', () {
        final result = forth.evaluate(<String>[': foo 5 ;', ': bar foo ;', ': foo 6 ;', 'bar foo']);
        expect(result, equals(<int>[5, 6]));
      }, skip: true);

      test('can define word that uses word with the same name', () {
        final result = forth.evaluate(<String>[': foo 10 ;', ': foo foo 1 + ;', 'foo']);
        expect(result, equals(<int>[11]));
      }, skip: true);

      test('cannot redefine non-negative numbers', () {
        final result = forth.evaluate(<String>[': 1 2 ;']);
        expect(result, equals(<String, String>{'error': 'illegal operation'}));
      }, skip: true);

      test('cannot redefine negative numbers', () {
        final result = forth.evaluate(<String>[': -1 2 ;']);
        expect(result, equals(<String, String>{'error': 'illegal operation'}));
      }, skip: true);

      test('errors if executing a non-existent word', () {
        final result = forth.evaluate(<String>['foo']);
        expect(result, equals(<String, String>{'error': 'undefined operation'}));
      }, skip: true);

      test('only defines locally', () {
        final result = forth.evaluateBoth(<String>[': + - ;', '1 1 +'], <String>['1 1 +']);
        expect(
            result,
            equals(<List<int>>[
              <int>[0],
              <int>[2]
            ]));
      }, skip: true);
    });

    group('case-insensitivity', () {
      test('DUP is case-insensitive', () {
        final result = forth.evaluate(<String>['1 DUP Dup dup']);
        expect(result, equals(<int>[1, 1, 1, 1]));
      }, skip: true);

      test('DROP is case-insensitive', () {
        final result = forth.evaluate(<String>['1 2 3 4 DROP Drop drop']);
        expect(result, equals(<int>[1]));
      }, skip: true);

      test('SWAP is case-insensitive', () {
        final result = forth.evaluate(<String>['1 2 SWAP 3 Swap 4 swap']);
        expect(result, equals(<int>[2, 3, 4, 1]));
      }, skip: true);

      test('OVER is case-insensitive', () {
        final result = forth.evaluate(<String>['1 2 OVER Over over']);
        expect(result, equals(<int>[1, 2, 1, 2, 1]));
      }, skip: true);

      test('user-defined words are case-insensitive', () {
        final result = forth.evaluate(<String>[': foo dup ;', '1 FOO Foo foo']);
        expect(result, equals(<int>[1, 1, 1, 1]));
      }, skip: true);

      test('definitions are case-insensitive', () {
        final result = forth.evaluate(<String>[': SWAP DUP Dup dup ;', '1 swap']);
        expect(result, equals(<int>[1, 1, 1, 1]));
      }, skip: true);
    });
  });
}
