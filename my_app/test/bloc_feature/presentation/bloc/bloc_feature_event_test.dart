// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/bloc_feature/bloc_feature.dart';

void main() {
  group('BlocFeatureEvent', () {
    group('BlocFeatureCustomEvent', () {
      test('supports value equality', () {
        expect(
          BlocFeatureCustomEvent(),
          equals(const BlocFeatureCustomEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(const BlocFeatureCustomEvent(), isNotNull);
      });
    });
  });
}
