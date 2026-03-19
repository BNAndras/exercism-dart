import 'package:test/test.dart';
import 'package:twelve_days/twelve_days.dart';

void main() {
  final twelveDays = TwelveDays();

  group('TwelveDays', () {
    group('verse', () {
      test('first day a partridge in a pear tree', () {
        final result = twelveDays.recite(1, 1);
        expect(result,
            equals(<String>['On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.']));
      }, skip: false);

      test('second day two turtle doves', () {
        final result = twelveDays.recite(2, 2);
        expect(
            result,
            equals(<String>[
              'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('third day three french hens', () {
        final result = twelveDays.recite(3, 3);
        expect(
            result,
            equals(<String>[
              'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('fourth day four calling birds', () {
        final result = twelveDays.recite(4, 4);
        expect(
            result,
            equals(<String>[
              'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('fifth day five gold rings', () {
        final result = twelveDays.recite(5, 5);
        expect(
            result,
            equals(<String>[
              'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('sixth day six geese-a-laying', () {
        final result = twelveDays.recite(6, 6);
        expect(
            result,
            equals(<String>[
              'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('seventh day seven swans-a-swimming', () {
        final result = twelveDays.recite(7, 7);
        expect(
            result,
            equals(<String>[
              'On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('eighth day eight maids-a-milking', () {
        final result = twelveDays.recite(8, 8);
        expect(
            result,
            equals(<String>[
              'On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('ninth day nine ladies dancing', () {
        final result = twelveDays.recite(9, 9);
        expect(
            result,
            equals(<String>[
              'On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('tenth day ten lords-a-leaping', () {
        final result = twelveDays.recite(10, 10);
        expect(
            result,
            equals(<String>[
              'On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('eleventh day eleven pipers piping', () {
        final result = twelveDays.recite(11, 11);
        expect(
            result,
            equals(<String>[
              'On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('twelfth day twelve drummers drumming', () {
        final result = twelveDays.recite(12, 12);
        expect(
            result,
            equals(<String>[
              'On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);
    });

    group('lyrics', () {
      test('recites first three verses of the song', () {
        final result = twelveDays.recite(1, 3);
        expect(
            result,
            equals(<String>[
              'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.',
              'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('recites three verses from the middle of the song', () {
        final result = twelveDays.recite(4, 6);
        expect(
            result,
            equals(<String>[
              'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);

      test('recites the whole song', () {
        final result = twelveDays.recite(1, 12);
        expect(
            result,
            equals(<String>[
              'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.',
              'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.',
              'On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.'
            ]));
      }, skip: true);
    });
  });
}
