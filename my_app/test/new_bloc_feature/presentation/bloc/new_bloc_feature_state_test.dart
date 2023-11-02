// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_bloc_feature/new_bloc_feature.dart';

void main() {
  group('NewBlocFeatureState', () {
    group('supports value equality', () {
      test('when comparing two default objects', () {
        expect(NewBlocFeatureState(), equals(NewBlocFeatureState()));
      });
      test('when comparing two objects with the same values', () {
        expect(
          NewBlocFeatureState(customProperty: 'property'),
          equals(NewBlocFeatureState(customProperty: 'property')),
        );
      });
      test('when comparing two objects with different values', () {
        expect(
          NewBlocFeatureState(customProperty: 'one'),
          isNot(equals(NewBlocFeatureState(customProperty: 'two'))),
        );
      });
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(const NewBlocFeatureState(), isNotNull);
      });
    });

    group('copyWith', () {
      test('copies correctly when no argument specified', () {
        const oldState = NewBlocFeatureState(customProperty: 'property');
        final result = oldState.copyWith();
        expect(oldState.customProperty, equals(result.customProperty));
      });

      test('copies correctly when all arguments specified', () {
        final oldState = NewBlocFeatureState(customProperty: 'one');
        final newState = NewBlocFeatureState(customProperty: 'two');

        final result = oldState.copyWith(
          customProperty: newState.customProperty,
        );

        expect(result.customProperty, equals(newState.customProperty));
      });
    });
  });
}
