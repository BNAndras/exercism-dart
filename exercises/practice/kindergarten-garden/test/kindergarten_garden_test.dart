import 'package:kindergarten_garden/kindergarten_garden.dart';
import 'package:test/test.dart';

void main() {
  final kindergartenGarden = KindergartenGarden();

  group('KindergartenGarden', () {
    group('partial garden', () {
      test('garden with single student', () {
        final result = kindergartenGarden.plants('RC\nGG', 'Alice');
        expect(result, equals(<String>['radishes', 'clover', 'grass', 'grass']));
      }, skip: false);

      test('different garden with single student', () {
        final result = kindergartenGarden.plants('VC\nRC', 'Alice');
        expect(result, equals(<String>['violets', 'clover', 'radishes', 'clover']));
      }, skip: true);

      test('garden with two students', () {
        final result = kindergartenGarden.plants('VVCG\nVVRC', 'Bob');
        expect(result, equals(<String>['clover', 'grass', 'radishes', 'clover']));
      }, skip: true);

      group('multiple students for the same garden with three students', () {
        test('second student\'s garden', () {
          final result = kindergartenGarden.plants('VVCCGG\nVVCCGG', 'Bob');
          expect(result, equals(<String>['clover', 'clover', 'clover', 'clover']));
        }, skip: true);

        test('third student\'s garden', () {
          final result = kindergartenGarden.plants('VVCCGG\nVVCCGG', 'Charlie');
          expect(result, equals(<String>['grass', 'grass', 'grass', 'grass']));
        }, skip: true);
      });
    });

    group('full garden', () {
      test('for Alice, first student\'s garden', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Alice');
        expect(result, equals(<String>['violets', 'radishes', 'violets', 'radishes']));
      }, skip: true);

      test('for Bob, second student\'s garden', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Bob');
        expect(result, equals(<String>['clover', 'grass', 'clover', 'clover']));
      }, skip: true);

      test('for Charlie', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Charlie');
        expect(result, equals(<String>['violets', 'violets', 'clover', 'grass']));
      }, skip: true);

      test('for David', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'David');
        expect(result, equals(<String>['radishes', 'violets', 'clover', 'radishes']));
      }, skip: true);

      test('for Eve', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Eve');
        expect(result, equals(<String>['clover', 'grass', 'radishes', 'grass']));
      }, skip: true);

      test('for Fred', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Fred');
        expect(result, equals(<String>['grass', 'clover', 'violets', 'clover']));
      }, skip: true);

      test('for Ginny', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Ginny');
        expect(result, equals(<String>['clover', 'grass', 'grass', 'clover']));
      }, skip: true);

      test('for Harriet', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Harriet');
        expect(result, equals(<String>['violets', 'radishes', 'radishes', 'violets']));
      }, skip: true);

      test('for Ileana', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Ileana');
        expect(result, equals(<String>['grass', 'clover', 'violets', 'clover']));
      }, skip: true);

      test('for Joseph', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Joseph');
        expect(result, equals(<String>['violets', 'clover', 'violets', 'grass']));
      }, skip: true);

      test('for Kincaid, second to last student\'s garden', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Kincaid');
        expect(result, equals(<String>['grass', 'clover', 'clover', 'grass']));
      }, skip: true);

      test('for Larry, last student\'s garden', () {
        final result = kindergartenGarden.plants('VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV', 'Larry');
        expect(result, equals(<String>['grass', 'violets', 'clover', 'violets']));
      }, skip: true);
    });
  });
}
