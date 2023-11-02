// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_bloc_feature/new_bloc_feature.dart';

void main() {
  group('NewBlocFeatureEvent', () {
    group('NewBlocFeatureCustomEvent', () {
      group('supports value equality', () {
        test('when comparing two objects with the same values', () {
          expect(
            NewBlocFeatureCustomEvent(property: 'default'),
            equals(NewBlocFeatureCustomEvent(property: 'default')),
          );
        });
        test('when comparing two nonequal objects', () {
          expect(
            NewBlocFeatureCustomEvent(property: 'one'),
            isNot(equals(NewBlocFeatureCustomEvent(property: 'two'))),
          );
        });
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(const NewBlocFeatureCustomEvent(property: 'default'), isNotNull);
      });
    });
  });
}
