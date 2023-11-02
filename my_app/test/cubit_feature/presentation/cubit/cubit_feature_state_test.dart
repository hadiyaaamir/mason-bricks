// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/cubit_feature/cubit_feature.dart';

void main() {
  group('CubitFeatureState', () {
    test('supports value equality', () {
      expect(
        CubitFeatureState(),
        equals(
          const CubitFeatureState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CubitFeatureState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const cubitFeatureState = CubitFeatureState(
            customProperty: 'My property',
          );
          expect(
            cubitFeatureState.copyWith(),
            equals(cubitFeatureState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const cubitFeatureState = CubitFeatureState(
            customProperty: 'My property',
          );
          final otherCubitFeatureState = CubitFeatureState(
            customProperty: 'My property 2',
          );
          expect(cubitFeatureState, isNot(equals(otherCubitFeatureState)));

          expect(
            cubitFeatureState.copyWith(
              customProperty: otherCubitFeatureState.customProperty,
            ),
            equals(otherCubitFeatureState),
          );
        },
      );
    });
  });
}
