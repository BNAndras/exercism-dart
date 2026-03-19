import 'package:meetup/meetup.dart';
import 'package:test/test.dart';

void main() {
  final meetup = Meetup();

  group('Meetup', () {
    test('when teenth Monday is the 13th, the first day of the teenth week', () {
      final result = meetup.meetup(2013, 5, 'teenth', 'Monday');
      expect(result, equals('2013-05-13'));
    }, skip: false);

    test('when teenth Monday is the 19th, the last day of the teenth week', () {
      final result = meetup.meetup(2013, 8, 'teenth', 'Monday');
      expect(result, equals('2013-08-19'));
    }, skip: true);

    test('when teenth Monday is some day in the middle of the teenth week', () {
      final result = meetup.meetup(2013, 9, 'teenth', 'Monday');
      expect(result, equals('2013-09-16'));
    }, skip: true);

    test('when teenth Tuesday is the 19th, the last day of the teenth week', () {
      final result = meetup.meetup(2013, 3, 'teenth', 'Tuesday');
      expect(result, equals('2013-03-19'));
    }, skip: true);

    test('when teenth Tuesday is some day in the middle of the teenth week', () {
      final result = meetup.meetup(2013, 4, 'teenth', 'Tuesday');
      expect(result, equals('2013-04-16'));
    }, skip: true);

    test('when teenth Tuesday is the 13th, the first day of the teenth week', () {
      final result = meetup.meetup(2013, 8, 'teenth', 'Tuesday');
      expect(result, equals('2013-08-13'));
    }, skip: true);

    test('when teenth Wednesday is some day in the middle of the teenth week', () {
      final result = meetup.meetup(2013, 1, 'teenth', 'Wednesday');
      expect(result, equals('2013-01-16'));
    }, skip: true);

    test('when teenth Wednesday is the 13th, the first day of the teenth week', () {
      final result = meetup.meetup(2013, 2, 'teenth', 'Wednesday');
      expect(result, equals('2013-02-13'));
    }, skip: true);

    test('when teenth Wednesday is the 19th, the last day of the teenth week', () {
      final result = meetup.meetup(2013, 6, 'teenth', 'Wednesday');
      expect(result, equals('2013-06-19'));
    }, skip: true);

    test('when teenth Thursday is some day in the middle of the teenth week', () {
      final result = meetup.meetup(2013, 5, 'teenth', 'Thursday');
      expect(result, equals('2013-05-16'));
    }, skip: true);

    test('when teenth Thursday is the 13th, the first day of the teenth week', () {
      final result = meetup.meetup(2013, 6, 'teenth', 'Thursday');
      expect(result, equals('2013-06-13'));
    }, skip: true);

    test('when teenth Thursday is the 19th, the last day of the teenth week', () {
      final result = meetup.meetup(2013, 9, 'teenth', 'Thursday');
      expect(result, equals('2013-09-19'));
    }, skip: true);

    test('when teenth Friday is the 19th, the last day of the teenth week', () {
      final result = meetup.meetup(2013, 4, 'teenth', 'Friday');
      expect(result, equals('2013-04-19'));
    }, skip: true);

    test('when teenth Friday is some day in the middle of the teenth week', () {
      final result = meetup.meetup(2013, 8, 'teenth', 'Friday');
      expect(result, equals('2013-08-16'));
    }, skip: true);

    test('when teenth Friday is the 13th, the first day of the teenth week', () {
      final result = meetup.meetup(2013, 9, 'teenth', 'Friday');
      expect(result, equals('2013-09-13'));
    }, skip: true);

    test('when teenth Saturday is some day in the middle of the teenth week', () {
      final result = meetup.meetup(2013, 2, 'teenth', 'Saturday');
      expect(result, equals('2013-02-16'));
    }, skip: true);

    test('when teenth Saturday is the 13th, the first day of the teenth week', () {
      final result = meetup.meetup(2013, 4, 'teenth', 'Saturday');
      expect(result, equals('2013-04-13'));
    }, skip: true);

    test('when teenth Saturday is the 19th, the last day of the teenth week', () {
      final result = meetup.meetup(2013, 10, 'teenth', 'Saturday');
      expect(result, equals('2013-10-19'));
    }, skip: true);

    test('when teenth Sunday is the 19th, the last day of the teenth week', () {
      final result = meetup.meetup(2013, 5, 'teenth', 'Sunday');
      expect(result, equals('2013-05-19'));
    }, skip: true);

    test('when teenth Sunday is some day in the middle of the teenth week', () {
      final result = meetup.meetup(2013, 6, 'teenth', 'Sunday');
      expect(result, equals('2013-06-16'));
    }, skip: true);

    test('when teenth Sunday is the 13th, the first day of the teenth week', () {
      final result = meetup.meetup(2013, 10, 'teenth', 'Sunday');
      expect(result, equals('2013-10-13'));
    }, skip: true);

    test('when first Monday is some day in the middle of the first week', () {
      final result = meetup.meetup(2013, 3, 'first', 'Monday');
      expect(result, equals('2013-03-04'));
    }, skip: true);

    test('when first Monday is the 1st, the first day of the first week', () {
      final result = meetup.meetup(2013, 4, 'first', 'Monday');
      expect(result, equals('2013-04-01'));
    }, skip: true);

    test('when first Tuesday is the 7th, the last day of the first week', () {
      final result = meetup.meetup(2013, 5, 'first', 'Tuesday');
      expect(result, equals('2013-05-07'));
    }, skip: true);

    test('when first Tuesday is some day in the middle of the first week', () {
      final result = meetup.meetup(2013, 6, 'first', 'Tuesday');
      expect(result, equals('2013-06-04'));
    }, skip: true);

    test('when first Wednesday is some day in the middle of the first week', () {
      final result = meetup.meetup(2013, 7, 'first', 'Wednesday');
      expect(result, equals('2013-07-03'));
    }, skip: true);

    test('when first Wednesday is the 7th, the last day of the first week', () {
      final result = meetup.meetup(2013, 8, 'first', 'Wednesday');
      expect(result, equals('2013-08-07'));
    }, skip: true);

    test('when first Thursday is some day in the middle of the first week', () {
      final result = meetup.meetup(2013, 9, 'first', 'Thursday');
      expect(result, equals('2013-09-05'));
    }, skip: true);

    test('when first Thursday is another day in the middle of the first week', () {
      final result = meetup.meetup(2013, 10, 'first', 'Thursday');
      expect(result, equals('2013-10-03'));
    }, skip: true);

    test('when first Friday is the 1st, the first day of the first week', () {
      final result = meetup.meetup(2013, 11, 'first', 'Friday');
      expect(result, equals('2013-11-01'));
    }, skip: true);

    test('when first Friday is some day in the middle of the first week', () {
      final result = meetup.meetup(2013, 12, 'first', 'Friday');
      expect(result, equals('2013-12-06'));
    }, skip: true);

    test('when first Saturday is some day in the middle of the first week', () {
      final result = meetup.meetup(2013, 1, 'first', 'Saturday');
      expect(result, equals('2013-01-05'));
    }, skip: true);

    test('when first Saturday is another day in the middle of the first week', () {
      final result = meetup.meetup(2013, 2, 'first', 'Saturday');
      expect(result, equals('2013-02-02'));
    }, skip: true);

    test('when first Sunday is some day in the middle of the first week', () {
      final result = meetup.meetup(2013, 3, 'first', 'Sunday');
      expect(result, equals('2013-03-03'));
    }, skip: true);

    test('when first Sunday is the 7th, the last day of the first week', () {
      final result = meetup.meetup(2013, 4, 'first', 'Sunday');
      expect(result, equals('2013-04-07'));
    }, skip: true);

    test('when second Monday is some day in the middle of the second week', () {
      final result = meetup.meetup(2013, 3, 'second', 'Monday');
      expect(result, equals('2013-03-11'));
    }, skip: true);

    test('when second Monday is the 8th, the first day of the second week', () {
      final result = meetup.meetup(2013, 4, 'second', 'Monday');
      expect(result, equals('2013-04-08'));
    }, skip: true);

    test('when second Tuesday is the 14th, the last day of the second week', () {
      final result = meetup.meetup(2013, 5, 'second', 'Tuesday');
      expect(result, equals('2013-05-14'));
    }, skip: true);

    test('when second Tuesday is some day in the middle of the second week', () {
      final result = meetup.meetup(2013, 6, 'second', 'Tuesday');
      expect(result, equals('2013-06-11'));
    }, skip: true);

    test('when second Wednesday is some day in the middle of the second week', () {
      final result = meetup.meetup(2013, 7, 'second', 'Wednesday');
      expect(result, equals('2013-07-10'));
    }, skip: true);

    test('when second Wednesday is the 14th, the last day of the second week', () {
      final result = meetup.meetup(2013, 8, 'second', 'Wednesday');
      expect(result, equals('2013-08-14'));
    }, skip: true);

    test('when second Thursday is some day in the middle of the second week', () {
      final result = meetup.meetup(2013, 9, 'second', 'Thursday');
      expect(result, equals('2013-09-12'));
    }, skip: true);

    test('when second Thursday is another day in the middle of the second week', () {
      final result = meetup.meetup(2013, 10, 'second', 'Thursday');
      expect(result, equals('2013-10-10'));
    }, skip: true);

    test('when second Friday is the 8th, the first day of the second week', () {
      final result = meetup.meetup(2013, 11, 'second', 'Friday');
      expect(result, equals('2013-11-08'));
    }, skip: true);

    test('when second Friday is some day in the middle of the second week', () {
      final result = meetup.meetup(2013, 12, 'second', 'Friday');
      expect(result, equals('2013-12-13'));
    }, skip: true);

    test('when second Saturday is some day in the middle of the second week', () {
      final result = meetup.meetup(2013, 1, 'second', 'Saturday');
      expect(result, equals('2013-01-12'));
    }, skip: true);

    test('when second Saturday is another day in the middle of the second week', () {
      final result = meetup.meetup(2013, 2, 'second', 'Saturday');
      expect(result, equals('2013-02-09'));
    }, skip: true);

    test('when second Sunday is some day in the middle of the second week', () {
      final result = meetup.meetup(2013, 3, 'second', 'Sunday');
      expect(result, equals('2013-03-10'));
    }, skip: true);

    test('when second Sunday is the 14th, the last day of the second week', () {
      final result = meetup.meetup(2013, 4, 'second', 'Sunday');
      expect(result, equals('2013-04-14'));
    }, skip: true);

    test('when third Monday is some day in the middle of the third week', () {
      final result = meetup.meetup(2013, 3, 'third', 'Monday');
      expect(result, equals('2013-03-18'));
    }, skip: true);

    test('when third Monday is the 15th, the first day of the third week', () {
      final result = meetup.meetup(2013, 4, 'third', 'Monday');
      expect(result, equals('2013-04-15'));
    }, skip: true);

    test('when third Tuesday is the 21st, the last day of the third week', () {
      final result = meetup.meetup(2013, 5, 'third', 'Tuesday');
      expect(result, equals('2013-05-21'));
    }, skip: true);

    test('when third Tuesday is some day in the middle of the third week', () {
      final result = meetup.meetup(2013, 6, 'third', 'Tuesday');
      expect(result, equals('2013-06-18'));
    }, skip: true);

    test('when third Wednesday is some day in the middle of the third week', () {
      final result = meetup.meetup(2013, 7, 'third', 'Wednesday');
      expect(result, equals('2013-07-17'));
    }, skip: true);

    test('when third Wednesday is the 21st, the last day of the third week', () {
      final result = meetup.meetup(2013, 8, 'third', 'Wednesday');
      expect(result, equals('2013-08-21'));
    }, skip: true);

    test('when third Thursday is some day in the middle of the third week', () {
      final result = meetup.meetup(2013, 9, 'third', 'Thursday');
      expect(result, equals('2013-09-19'));
    }, skip: true);

    test('when third Thursday is another day in the middle of the third week', () {
      final result = meetup.meetup(2013, 10, 'third', 'Thursday');
      expect(result, equals('2013-10-17'));
    }, skip: true);

    test('when third Friday is the 15th, the first day of the third week', () {
      final result = meetup.meetup(2013, 11, 'third', 'Friday');
      expect(result, equals('2013-11-15'));
    }, skip: true);

    test('when third Friday is some day in the middle of the third week', () {
      final result = meetup.meetup(2013, 12, 'third', 'Friday');
      expect(result, equals('2013-12-20'));
    }, skip: true);

    test('when third Saturday is some day in the middle of the third week', () {
      final result = meetup.meetup(2013, 1, 'third', 'Saturday');
      expect(result, equals('2013-01-19'));
    }, skip: true);

    test('when third Saturday is another day in the middle of the third week', () {
      final result = meetup.meetup(2013, 2, 'third', 'Saturday');
      expect(result, equals('2013-02-16'));
    }, skip: true);

    test('when third Sunday is some day in the middle of the third week', () {
      final result = meetup.meetup(2013, 3, 'third', 'Sunday');
      expect(result, equals('2013-03-17'));
    }, skip: true);

    test('when third Sunday is the 21st, the last day of the third week', () {
      final result = meetup.meetup(2013, 4, 'third', 'Sunday');
      expect(result, equals('2013-04-21'));
    }, skip: true);

    test('when fourth Monday is some day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 3, 'fourth', 'Monday');
      expect(result, equals('2013-03-25'));
    }, skip: true);

    test('when fourth Monday is the 22nd, the first day of the fourth week', () {
      final result = meetup.meetup(2013, 4, 'fourth', 'Monday');
      expect(result, equals('2013-04-22'));
    }, skip: true);

    test('when fourth Tuesday is the 28th, the last day of the fourth week', () {
      final result = meetup.meetup(2013, 5, 'fourth', 'Tuesday');
      expect(result, equals('2013-05-28'));
    }, skip: true);

    test('when fourth Tuesday is some day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 6, 'fourth', 'Tuesday');
      expect(result, equals('2013-06-25'));
    }, skip: true);

    test('when fourth Wednesday is some day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 7, 'fourth', 'Wednesday');
      expect(result, equals('2013-07-24'));
    }, skip: true);

    test('when fourth Wednesday is the 28th, the last day of the fourth week', () {
      final result = meetup.meetup(2013, 8, 'fourth', 'Wednesday');
      expect(result, equals('2013-08-28'));
    }, skip: true);

    test('when fourth Thursday is some day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 9, 'fourth', 'Thursday');
      expect(result, equals('2013-09-26'));
    }, skip: true);

    test('when fourth Thursday is another day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 10, 'fourth', 'Thursday');
      expect(result, equals('2013-10-24'));
    }, skip: true);

    test('when fourth Friday is the 22nd, the first day of the fourth week', () {
      final result = meetup.meetup(2013, 11, 'fourth', 'Friday');
      expect(result, equals('2013-11-22'));
    }, skip: true);

    test('when fourth Friday is some day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 12, 'fourth', 'Friday');
      expect(result, equals('2013-12-27'));
    }, skip: true);

    test('when fourth Saturday is some day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 1, 'fourth', 'Saturday');
      expect(result, equals('2013-01-26'));
    }, skip: true);

    test('when fourth Saturday is another day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 2, 'fourth', 'Saturday');
      expect(result, equals('2013-02-23'));
    }, skip: true);

    test('when fourth Sunday is some day in the middle of the fourth week', () {
      final result = meetup.meetup(2013, 3, 'fourth', 'Sunday');
      expect(result, equals('2013-03-24'));
    }, skip: true);

    test('when fourth Sunday is the 28th, the last day of the fourth week', () {
      final result = meetup.meetup(2013, 4, 'fourth', 'Sunday');
      expect(result, equals('2013-04-28'));
    }, skip: true);

    test('last Monday in a month with four Mondays', () {
      final result = meetup.meetup(2013, 3, 'last', 'Monday');
      expect(result, equals('2013-03-25'));
    }, skip: true);

    test('last Monday in a month with five Mondays', () {
      final result = meetup.meetup(2013, 4, 'last', 'Monday');
      expect(result, equals('2013-04-29'));
    }, skip: true);

    test('last Tuesday in a month with four Tuesdays', () {
      final result = meetup.meetup(2013, 5, 'last', 'Tuesday');
      expect(result, equals('2013-05-28'));
    }, skip: true);

    test('last Tuesday in another month with four Tuesdays', () {
      final result = meetup.meetup(2013, 6, 'last', 'Tuesday');
      expect(result, equals('2013-06-25'));
    }, skip: true);

    test('last Wednesday in a month with five Wednesdays', () {
      final result = meetup.meetup(2013, 7, 'last', 'Wednesday');
      expect(result, equals('2013-07-31'));
    }, skip: true);

    test('last Wednesday in a month with four Wednesdays', () {
      final result = meetup.meetup(2013, 8, 'last', 'Wednesday');
      expect(result, equals('2013-08-28'));
    }, skip: true);

    test('last Thursday in a month with four Thursdays', () {
      final result = meetup.meetup(2013, 9, 'last', 'Thursday');
      expect(result, equals('2013-09-26'));
    }, skip: true);

    test('last Thursday in a month with five Thursdays', () {
      final result = meetup.meetup(2013, 10, 'last', 'Thursday');
      expect(result, equals('2013-10-31'));
    }, skip: true);

    test('last Friday in a month with five Fridays', () {
      final result = meetup.meetup(2013, 11, 'last', 'Friday');
      expect(result, equals('2013-11-29'));
    }, skip: true);

    test('last Friday in a month with four Fridays', () {
      final result = meetup.meetup(2013, 12, 'last', 'Friday');
      expect(result, equals('2013-12-27'));
    }, skip: true);

    test('last Saturday in a month with four Saturdays', () {
      final result = meetup.meetup(2013, 1, 'last', 'Saturday');
      expect(result, equals('2013-01-26'));
    }, skip: true);

    test('last Saturday in another month with four Saturdays', () {
      final result = meetup.meetup(2013, 2, 'last', 'Saturday');
      expect(result, equals('2013-02-23'));
    }, skip: true);

    test('last Sunday in a month with five Sundays', () {
      final result = meetup.meetup(2013, 3, 'last', 'Sunday');
      expect(result, equals('2013-03-31'));
    }, skip: true);

    test('last Sunday in a month with four Sundays', () {
      final result = meetup.meetup(2013, 4, 'last', 'Sunday');
      expect(result, equals('2013-04-28'));
    }, skip: true);

    test('when last Wednesday in February in a leap year is the 29th', () {
      final result = meetup.meetup(2012, 2, 'last', 'Wednesday');
      expect(result, equals('2012-02-29'));
    }, skip: true);

    test('last Wednesday in December that is also the last day of the year', () {
      final result = meetup.meetup(2014, 12, 'last', 'Wednesday');
      expect(result, equals('2014-12-31'));
    }, skip: true);

    test('when last Sunday in February in a non-leap year is not the 29th', () {
      final result = meetup.meetup(2015, 2, 'last', 'Sunday');
      expect(result, equals('2015-02-22'));
    }, skip: true);

    test('when first Friday is the 7th, the last day of the first week', () {
      final result = meetup.meetup(2012, 12, 'first', 'Friday');
      expect(result, equals('2012-12-07'));
    }, skip: true);
  });
}
