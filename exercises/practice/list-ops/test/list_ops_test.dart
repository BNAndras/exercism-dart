import 'package:list_ops/list_ops.dart';
import 'package:test/test.dart';

void main() {
  final listOps = ListOps();

  group('ListOps', () {
    group('append entries to a list and return the new list', () {
      test('empty lists', () {
        final result = listOps.append(<Object>[], <Object>[]);
        expect(result, equals(<Object>[]));
      }, skip: false);

      test('list to empty list', () {
        final result = listOps.append(<Object>[], <int>[1, 2, 3, 4]);
        expect(result, equals(<int>[1, 2, 3, 4]));
      }, skip: true);

      test('empty list to list', () {
        final result = listOps.append(<int>[1, 2, 3, 4], <Object>[]);
        expect(result, equals(<int>[1, 2, 3, 4]));
      }, skip: true);

      test('non-empty lists', () {
        final result = listOps.append(<int>[1, 2], <int>[2, 3, 4, 5]);
        expect(result, equals(<int>[1, 2, 2, 3, 4, 5]));
      }, skip: true);
    });

    group('concatenate a list of lists', () {
      test('empty list', () {
        final result = listOps.concat(<Object>[]);
        expect(result, equals(<Object>[]));
      }, skip: true);

      test('list of lists', () {
        final result = listOps.concat(<Object>[
          <int>[1, 2],
          <int>[3],
          <Object>[],
          <int>[4, 5, 6]
        ]);
        expect(result, equals(<int>[1, 2, 3, 4, 5, 6]));
      }, skip: true);

      test('list of nested lists', () {
        final result = listOps.concat(<Object>[
          <List<int>>[
            <int>[1],
            <int>[2]
          ],
          <List<int>>[
            <int>[3]
          ],
          <List<Object>>[<Object>[]],
          <List<int>>[
            <int>[4, 5, 6]
          ]
        ]);
        expect(
            result,
            equals(<Object>[
              <int>[1],
              <int>[2],
              <int>[3],
              <Object>[],
              <int>[4, 5, 6]
            ]));
      }, skip: true);
    });

    group('filter list returning only values that satisfy the filter function', () {
      test('empty list', () {
        final result = listOps.filter(<Object>[], '(x) -> x modulo 2 == 1');
        expect(result, equals(<Object>[]));
      }, skip: true);

      test('non-empty list', () {
        final result = listOps.filter(<int>[1, 2, 3, 5], '(x) -> x modulo 2 == 1');
        expect(result, equals(<int>[1, 3, 5]));
      }, skip: true);
    });

    group('returns the length of a list', () {
      test('empty list', () {
        final result = listOps.length(<Object>[]);
        expect(result, equals(0));
      }, skip: true);

      test('non-empty list', () {
        final result = listOps.length(<int>[1, 2, 3, 4]);
        expect(result, equals(4));
      }, skip: true);
    });

    group('return a list of elements whose values equal the list value transformed by the mapping function', () {
      test('empty list', () {
        final result = listOps.map(<Object>[], '(x) -> x + 1');
        expect(result, equals(<Object>[]));
      }, skip: true);

      test('non-empty list', () {
        final result = listOps.map(<int>[1, 3, 5, 7], '(x) -> x + 1');
        expect(result, equals(<int>[2, 4, 6, 8]));
      }, skip: true);
    });

    group('folds (reduces) the given list from the left with a function', () {
      test('empty list', () {
        final result = listOps.foldl(<Object>[], 2, '(acc, el) -> el * acc');
        expect(result, equals(2));
      }, skip: true);

      test('direction independent function applied to non-empty list', () {
        final result = listOps.foldl(<int>[1, 2, 3, 4], 5, '(acc, el) -> el + acc');
        expect(result, equals(15));
      }, skip: true);

      test('direction dependent function applied to non-empty list', () {
        final result = listOps.foldl(<int>[1, 2, 3, 4], 24, '(acc, el) -> el / acc');
        expect(result, equals(64));
      }, skip: true);
    });

    group('folds (reduces) the given list from the right with a function', () {
      test('empty list', () {
        final result = listOps.foldr(<Object>[], 2, '(acc, el) -> el * acc');
        expect(result, equals(2));
      }, skip: true);

      test('direction independent function applied to non-empty list', () {
        final result = listOps.foldr(<int>[1, 2, 3, 4], 5, '(acc, el) -> el + acc');
        expect(result, equals(15));
      }, skip: true);

      test('direction dependent function applied to non-empty list', () {
        final result = listOps.foldr(<int>[1, 2, 3, 4], 24, '(acc, el) -> el / acc');
        expect(result, equals(9));
      }, skip: true);
    });

    group('reverse the elements of the list', () {
      test('empty list', () {
        final result = listOps.reverse(<Object>[]);
        expect(result, equals(<Object>[]));
      }, skip: true);

      test('non-empty list', () {
        final result = listOps.reverse(<int>[1, 3, 5, 7]);
        expect(result, equals(<int>[7, 5, 3, 1]));
      }, skip: true);

      test('list of lists is not flattened', () {
        final result = listOps.reverse(<Object>[
          <int>[1, 2],
          <int>[3],
          <Object>[],
          <int>[4, 5, 6]
        ]);
        expect(
            result,
            equals(<Object>[
              <int>[4, 5, 6],
              <Object>[],
              <int>[3],
              <int>[1, 2]
            ]));
      }, skip: true);
    });
  });
}
