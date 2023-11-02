// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';

void main() {
  group('{{featureName.pascalCase()}}State', () {
    group('supports value equality', () {
      test('when comparing two default objects', () {
        expect({{featureName.pascalCase()}}State(), equals({{featureName.pascalCase()}}State()));
      });
      test('when comparing two objects with the same values', () {
        expect(
          {{featureName.pascalCase()}}State(customProperty: 'property'),
          equals({{featureName.pascalCase()}}State(customProperty: 'property')),
        );
      });
      test('when comparing two objects with different values', () {
        expect(
          {{featureName.pascalCase()}}State(customProperty: 'one'),
          isNot(equals({{featureName.pascalCase()}}State(customProperty: 'two'))),
        );
      });
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(const {{featureName.pascalCase()}}State(), isNotNull);
      });
    });

    group('copyWith', () {
      test('copies correctly when no argument specified', () {
        final oldState = {{featureName.pascalCase()}}State(customProperty: 'property');
        final result = oldState.copyWith();
        expect(result.customProperty, equals(oldState.customProperty));
      });

      test('copies correctly when all arguments specified', () {
        final oldState = {{featureName.pascalCase()}}State(customProperty: 'one');
        final newState = {{featureName.pascalCase()}}State(customProperty: 'two');

        final result = oldState.copyWith(
          customProperty: newState.customProperty,
        );

        expect(result.customProperty, equals(newState.customProperty));
      });
    });
  });
}
