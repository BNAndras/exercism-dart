import 'package:eliuds_eggs/eliuds_eggs.dart';
import 'package:test/test.dart';

void main() {
  final eliudsEggs = EliudsEggs();

  group('EliudsEggs', () {
    test('0 eggs', () {
      final result = eliudsEggs.eggCount(0);
      expect(result, equals(0));
    }, skip: false);

    test('1 egg', () {
      final result = eliudsEggs.eggCount(16);
      expect(result, equals(1));
    }, skip: true);

    test('4 eggs', () {
      final result = eliudsEggs.eggCount(89);
      expect(result, equals(4));
    }, skip: true);

    test('13 eggs', () {
      final result = eliudsEggs.eggCount(2000000000);
      expect(result, equals(13));
    }, skip: true);
  });
}
