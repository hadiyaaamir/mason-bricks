// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';

void main() {
  group('{{featureName.pascalCase()}}State', () {
    test('supports value equality', () {
      expect(
        {{featureName.pascalCase()}}State(),
        equals(
          const {{featureName.pascalCase()}}State(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const {{featureName.pascalCase()}}State(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const {{featureName.camelCase()}}State = {{featureName.pascalCase()}}State(
            customProperty: 'My property',
          );
          expect(
            {{featureName.camelCase()}}State.copyWith(),
            equals({{featureName.camelCase()}}State),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const {{featureName.camelCase()}}State = {{featureName.pascalCase()}}State(
            customProperty: 'My property',
          );
          final other{{featureName.pascalCase()}}State = {{featureName.pascalCase()}}State(
            customProperty: 'My property 2',
          );
          expect({{featureName.camelCase()}}State, isNot(equals(other{{featureName.pascalCase()}}State)));

          expect(
            {{featureName.camelCase()}}State.copyWith(
              customProperty: other{{featureName.pascalCase()}}State.customProperty,
            ),
            equals(other{{featureName.pascalCase()}}State),
          );
        },
      );
    });
  });
}
