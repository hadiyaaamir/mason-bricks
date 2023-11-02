// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_cubit_feature/new_cubit_feature.dart';

void main() {
  group('NewCubitFeatureState', () {
    group('supports value equality', () {
      test('when comparing two default objects', () {
        expect(NewCubitFeatureState(), equals(NewCubitFeatureState()));
      });
      test('when comparing two objects with the same values', () {
        expect(
          NewCubitFeatureState(customProperty: 'property'),
          equals(NewCubitFeatureState(customProperty: 'property')),
        );
      });
      test('when comparing two objects with different values', () {
        expect(
          NewCubitFeatureState(customProperty: 'one'),
          isNot(equals(NewCubitFeatureState(customProperty: 'two'))),
        );
      });
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(const NewCubitFeatureState(), isNotNull);
      });
    });

    group('copyWith', () {
      test('copies correctly when no argument specified', () {
        final oldState = NewCubitFeatureState(customProperty: 'property');
        final result = oldState.copyWith();
        expect(result.customProperty, equals(oldState.customProperty));
      });

      test('copies correctly when all arguments specified', () {
        final oldState = NewCubitFeatureState(customProperty: 'one');
        final newState = NewCubitFeatureState(customProperty: 'two');

        final result = oldState.copyWith(
          customProperty: newState.customProperty,
        );

        expect(result.customProperty, equals(newState.customProperty));
      });
    });
  });
}
