import 'package:largest_series_product/largest_series_product.dart';
import 'package:test/test.dart';

void main() {
  final largestSeriesProduct = LargestSeriesProduct();

  group('LargestSeriesProduct', () {
    test('finds the largest product if span equals length', () {
      final result = largestSeriesProduct.largestProduct('29', 2);
      expect(result, equals(18));
    }, skip: false);

    test('can find the largest product of 2 with numbers in order', () {
      final result = largestSeriesProduct.largestProduct('0123456789', 2);
      expect(result, equals(72));
    }, skip: true);

    test('can find the largest product of 2', () {
      final result = largestSeriesProduct.largestProduct('576802143', 2);
      expect(result, equals(48));
    }, skip: true);

    test('can find the largest product of 3 with numbers in order', () {
      final result = largestSeriesProduct.largestProduct('0123456789', 3);
      expect(result, equals(504));
    }, skip: true);

    test('can find the largest product of 3', () {
      final result = largestSeriesProduct.largestProduct('1027839564', 3);
      expect(result, equals(270));
    }, skip: true);

    test('can find the largest product of 5 with numbers in order', () {
      final result = largestSeriesProduct.largestProduct('0123456789', 5);
      expect(result, equals(15120));
    }, skip: true);

    test('can get the largest product of a big number', () {
      final result = largestSeriesProduct.largestProduct('73167176531330624919225119674426574742355349194934', 6);
      expect(result, equals(23520));
    }, skip: true);

    test('reports zero if the only digits are zero', () {
      final result = largestSeriesProduct.largestProduct('0000', 2);
      expect(result, equals(0));
    }, skip: true);

    test('reports zero if all spans include zero', () {
      final result = largestSeriesProduct.largestProduct('99099', 3);
      expect(result, equals(0));
    }, skip: true);

    test('rejects span longer than string length', () {
      final result = largestSeriesProduct.largestProduct('123', 4);
      expect(result, equals(<String, String>{'error': 'span must not exceed string length'}));
    }, skip: true);

    test('reports 1 for empty string and empty product (0 span)', () {
      final result = largestSeriesProduct.largestProduct('', 0);
      expect(result, equals(1));
    }, skip: true);

    test('reports 1 for nonempty string and empty product (0 span)', () {
      final result = largestSeriesProduct.largestProduct('123', 0);
      expect(result, equals(1));
    }, skip: true);

    test('rejects empty string and nonzero span', () {
      final result = largestSeriesProduct.largestProduct('', 1);
      expect(result, equals(<String, String>{'error': 'span must not exceed string length'}));
    }, skip: true);

    test('rejects invalid character in digits', () {
      final result = largestSeriesProduct.largestProduct('1234a5', 2);
      expect(result, equals(<String, String>{'error': 'digits input must only contain digits'}));
    }, skip: true);

    test('rejects negative span', () {
      final result = largestSeriesProduct.largestProduct('12345', -1);
      expect(result, equals(<String, String>{'error': 'span must not be negative'}));
    }, skip: true);
  });
}
