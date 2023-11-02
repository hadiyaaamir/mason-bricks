// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/bloc_feature/bloc_feature.dart';

void main() {
  group('BlocFeatureBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          BlocFeatureBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final blocFeatureBloc = BlocFeatureBloc();
      expect(blocFeatureBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<BlocFeatureBloc, BlocFeatureState>(
      'BlocFeatureCustomEvent emits nothing',
      build: BlocFeatureBloc.new,
      act: (bloc) => bloc.add(const BlocFeatureCustomEvent()),
      expect: () => <BlocFeatureState>[],
    );
  });
}
