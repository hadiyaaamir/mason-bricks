// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';

void main() {
  group('{{featureName.pascalCase()}}Event', () {
    group('{{featureName.pascalCase()}}CustomEvent', () {
      group('supports value equality', () {
        test('when comparing two objects with the same values', () {
          expect(
            {{featureName.pascalCase()}}CustomEvent(property: 'default'),
            equals({{featureName.pascalCase()}}CustomEvent(property: 'default')),
          );
        });
        test('when comparing two nonequal objects', () {
          expect(
            {{featureName.pascalCase()}}CustomEvent(property: 'one'),
            isNot(equals({{featureName.pascalCase()}}CustomEvent(property: 'two'))),
          );
        });
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(const {{featureName.pascalCase()}}CustomEvent(property: 'default'), isNotNull);
      });
    });
  });
}
