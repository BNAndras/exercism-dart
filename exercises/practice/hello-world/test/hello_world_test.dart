import 'package:hello_world/hello_world.dart';
import 'package:test/test.dart';

void main() {
  final helloWorld = HelloWorld();

  group('HelloWorld', () {
    test('Say Hi!', () {
      final result = helloWorld.hello();
      expect(result, equals('Hello, World!'));
    }, skip: false);
  });
}
