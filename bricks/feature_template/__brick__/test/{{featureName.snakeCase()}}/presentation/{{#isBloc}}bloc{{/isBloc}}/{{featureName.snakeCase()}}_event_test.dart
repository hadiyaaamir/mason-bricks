// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';

void main() {
  group('{{featureName.pascalCase()}}Event', () {
    group('{{{featureName.pascalCase()}}}CustomEvent', () {
      test('supports value equality', () {
        expect(
          {{featureName.pascalCase()}}CustomEvent(),
          equals(const {{featureName.pascalCase()}}CustomEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(const {{featureName.pascalCase()}}CustomEvent(), isNotNull);
      });
    });
  });
}
