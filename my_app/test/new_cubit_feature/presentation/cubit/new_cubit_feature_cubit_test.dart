// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_cubit_feature/new_cubit_feature.dart';

void main() {
  group('NewCubitFeatureCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(NewCubitFeatureCubit(),isNotNull);
      });
    });

    test('initial state has default values', () {
      final newCubitFeatureCubit = NewCubitFeatureCubit();
      expect(newCubitFeatureCubit.state.customProperty, equals('Default Value'));
    });

    group('customFunction', () { 
      blocTest<NewCubitFeatureCubit, NewCubitFeatureState>(
        'emits nothing',
        build: NewCubitFeatureCubit.new,
        act: (cubit) => cubit.customFunction(),
        expect: () => <NewCubitFeatureState>[],
      );
    });
    
  });
}
