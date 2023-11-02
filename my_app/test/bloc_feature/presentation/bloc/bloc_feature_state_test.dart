// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/bloc_feature/bloc_feature.dart';

void main() {
  group('BlocFeatureState', () {
    test('supports value equality', () {
      expect(
        BlocFeatureState(),
        equals(
          const BlocFeatureState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const BlocFeatureState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const blocFeatureState = BlocFeatureState(
            customProperty: 'My property',
          );
          expect(
            blocFeatureState.copyWith(),
            equals(blocFeatureState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const blocFeatureState = BlocFeatureState(
            customProperty: 'My property',
          );
          final otherBlocFeatureState = BlocFeatureState(
            customProperty: 'My property 2',
          );
          expect(blocFeatureState, isNot(equals(otherBlocFeatureState)));

          expect(
            blocFeatureState.copyWith(
              customProperty: otherBlocFeatureState.customProperty,
            ),
            equals(otherBlocFeatureState),
          );
        },
      );
    });
  });
}
