import 'package:grade_school/grade_school.dart';
import 'package:test/test.dart';

void main() {
  final gradeSchool = GradeSchool();

  group('GradeSchool', () {
    test('Roster is empty when no student is added', () {
      final result = gradeSchool.roster(<Object>[]);
      expect(result, equals(<Object>[]));
    }, skip: false);

    test('Add a student', () {
      final result = gradeSchool.add(<List<Object>>[
        <Object>['Aimee', 2]
      ]);
      expect(result, equals(<bool>[true]));
    }, skip: true);

    test('Student is added to the roster', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Aimee', 2]
      ]);
      expect(result, equals(<String>['Aimee']));
    }, skip: true);

    test('Adding multiple students in the same grade in the roster', () {
      final result = gradeSchool.add(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['Paul', 2]
      ]);
      expect(result, equals(<bool>[true, true, true]));
    }, skip: true);

    test('Multiple students in the same grade are added to the roster', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['Paul', 2]
      ]);
      expect(result, equals(<String>['Blair', 'James', 'Paul']));
    }, skip: true);

    test('Cannot add student to same grade in the roster more than once', () {
      final result = gradeSchool.add(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['James', 2],
        <Object>['Paul', 2]
      ]);
      expect(result, equals(<bool>[true, true, false, true]));
    }, skip: true);

    test('Student not added to same grade in the roster more than once', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['James', 2],
        <Object>['Paul', 2]
      ]);
      expect(result, equals(<String>['Blair', 'James', 'Paul']));
    }, skip: true);

    test('Adding students in multiple grades', () {
      final result = gradeSchool.add(<List<Object>>[
        <Object>['Chelsea', 3],
        <Object>['Logan', 7]
      ]);
      expect(result, equals(<bool>[true, true]));
    }, skip: true);

    test('Students in multiple grades are added to the roster', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Chelsea', 3],
        <Object>['Logan', 7]
      ]);
      expect(result, equals(<String>['Chelsea', 'Logan']));
    }, skip: true);

    test('Cannot add same student to multiple grades in the roster', () {
      final result = gradeSchool.add(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['James', 3],
        <Object>['Paul', 3]
      ]);
      expect(result, equals(<bool>[true, true, false, true]));
    }, skip: true);

    test('Student not added to multiple grades in the roster', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['James', 3],
        <Object>['Paul', 3]
      ]);
      expect(result, equals(<String>['Blair', 'James', 'Paul']));
    }, skip: true);

    test('Students are sorted by grades in the roster', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Jim', 3],
        <Object>['Peter', 2],
        <Object>['Anna', 1]
      ]);
      expect(result, equals(<String>['Anna', 'Peter', 'Jim']));
    }, skip: true);

    test('Students are sorted by name in the roster', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Peter', 2],
        <Object>['Zoe', 2],
        <Object>['Alex', 2]
      ]);
      expect(result, equals(<String>['Alex', 'Peter', 'Zoe']));
    }, skip: true);

    test('Students are sorted by grades and then by name in the roster', () {
      final result = gradeSchool.roster(<List<Object>>[
        <Object>['Peter', 2],
        <Object>['Anna', 1],
        <Object>['Barb', 1],
        <Object>['Zoe', 2],
        <Object>['Alex', 2],
        <Object>['Jim', 3],
        <Object>['Charlie', 1]
      ]);
      expect(result, equals(<String>['Anna', 'Barb', 'Charlie', 'Alex', 'Peter', 'Zoe', 'Jim']));
    }, skip: true);

    test('Grade is empty if no students in the roster', () {
      final result = gradeSchool.grade(<Object>[], 1);
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('Grade is empty if no students in that grade', () {
      final result = gradeSchool.grade(<List<Object>>[
        <Object>['Peter', 2],
        <Object>['Zoe', 2],
        <Object>['Alex', 2],
        <Object>['Jim', 3]
      ], 1);
      expect(result, equals(<Object>[]));
    }, skip: true);

    test('Student not added to same grade more than once', () {
      final result = gradeSchool.grade(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['James', 2],
        <Object>['Paul', 2]
      ], 2);
      expect(result, equals(<String>['Blair', 'James', 'Paul']));
    }, skip: true);

    test('Student not added to multiple grades', () {
      final result = gradeSchool.grade(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['James', 3],
        <Object>['Paul', 3]
      ], 2);
      expect(result, equals(<String>['Blair', 'James']));
    }, skip: true);

    test('Student not added to other grade for multiple grades', () {
      final result = gradeSchool.grade(<List<Object>>[
        <Object>['Blair', 2],
        <Object>['James', 2],
        <Object>['James', 3],
        <Object>['Paul', 3]
      ], 3);
      expect(result, equals(<String>['Paul']));
    }, skip: true);

    test('Students are sorted by name in a grade', () {
      final result = gradeSchool.grade(<List<Object>>[
        <Object>['Franklin', 5],
        <Object>['Bradley', 5],
        <Object>['Jeff', 1]
      ], 5);
      expect(result, equals(<String>['Bradley', 'Franklin']));
    }, skip: true);
  });
}
