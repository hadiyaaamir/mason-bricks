// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/cubit_feature/cubit_feature.dart';

void main() {
  group('CubitFeatureCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          CubitFeatureCubit(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final cubitFeatureCubit = CubitFeatureCubit();
      expect(cubitFeatureCubit.state.customProperty, equals('Default Value'));
    });

    blocTest<CubitFeatureCubit, CubitFeatureState>(
      'customFunction emits nothing',
      build: CubitFeatureCubit.new,
      act: (cubit) => cubit.customFunction(),
      expect: () => <CubitFeatureState>[],
    );
  });
}
