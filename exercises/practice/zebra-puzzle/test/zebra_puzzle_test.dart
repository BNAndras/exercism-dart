import 'package:test/test.dart';
import 'package:zebra_puzzle/zebra_puzzle.dart';

void main() {
  final zebraPuzzle = ZebraPuzzle();

  group('ZebraPuzzle', () {
    test('resident who drinks water', () {
      final result = zebraPuzzle.drinksWater();
      expect(result, equals('Norwegian'));
    }, skip: false);

    test('resident who owns zebra', () {
      final result = zebraPuzzle.ownsZebra();
      expect(result, equals('Japanese'));
    }, skip: true);
  });
}
