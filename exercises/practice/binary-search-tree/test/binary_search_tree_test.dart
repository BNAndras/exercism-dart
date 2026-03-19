import 'package:binary_search_tree/binary_search_tree.dart';
import 'package:test/test.dart';

void main() {
  final binarySearchTree = BinarySearchTree();

  group('BinarySearchTree', () {
    test('data is retained', () {
      final result = binarySearchTree.data(<String>['4']);
      expect(result, equals(<String, dynamic>{'data': '4', 'left': null, 'right': null}));
    }, skip: false);

    group('insert data at proper node', () {
      test('smaller number at left node', () {
        final result = binarySearchTree.data(<String>['4', '2']);
        expect(
            result,
            equals(<String, dynamic>{
              'data': '4',
              'left': <String, dynamic>{'data': '2', 'left': null, 'right': null},
              'right': null
            }));
      }, skip: true);

      test('same number at left node', () {
        final result = binarySearchTree.data(<String>['4', '4']);
        expect(
            result,
            equals(<String, dynamic>{
              'data': '4',
              'left': <String, dynamic>{'data': '4', 'left': null, 'right': null},
              'right': null
            }));
      }, skip: true);

      test('greater number at right node', () {
        final result = binarySearchTree.data(<String>['4', '5']);
        expect(
            result,
            equals(<String, dynamic>{
              'data': '4',
              'left': null,
              'right': <String, dynamic>{'data': '5', 'left': null, 'right': null}
            }));
      }, skip: true);
    });

    test('can create complex tree', () {
      final result = binarySearchTree.data(<String>['4', '2', '6', '1', '3', '5', '7']);
      expect(
          result,
          equals(<String, dynamic>{
            'data': '4',
            'left': <String, dynamic>{
              'data': '2',
              'left': <String, dynamic>{'data': '1', 'left': null, 'right': null},
              'right': <String, dynamic>{'data': '3', 'left': null, 'right': null}
            },
            'right': <String, dynamic>{
              'data': '6',
              'left': <String, dynamic>{'data': '5', 'left': null, 'right': null},
              'right': <String, dynamic>{'data': '7', 'left': null, 'right': null}
            }
          }));
    }, skip: true);

    group('can sort data', () {
      test('can sort single number', () {
        final result = binarySearchTree.sortedData(<String>['2']);
        expect(result, equals(<String>['2']));
      }, skip: true);

      test('can sort if second number is smaller than first', () {
        final result = binarySearchTree.sortedData(<String>['2', '1']);
        expect(result, equals(<String>['1', '2']));
      }, skip: true);

      test('can sort if second number is same as first', () {
        final result = binarySearchTree.sortedData(<String>['2', '2']);
        expect(result, equals(<String>['2', '2']));
      }, skip: true);

      test('can sort if second number is greater than first', () {
        final result = binarySearchTree.sortedData(<String>['2', '3']);
        expect(result, equals(<String>['2', '3']));
      }, skip: true);

      test('can sort complex tree', () {
        final result = binarySearchTree.sortedData(<String>['2', '1', '3', '6', '7', '5']);
        expect(result, equals(<String>['1', '2', '3', '5', '6', '7']));
      }, skip: true);
    });
  });
}
