// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_bloc_feature/new_bloc_feature.dart';

void main() {
  group('NewBlocFeatureBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(NewBlocFeatureBloc(), isNotNull);
      });
    });

    test('initial state has default values', () {
      final newBlocFeatureBloc = NewBlocFeatureBloc();
      expect(newBlocFeatureBloc.state.customProperty, equals('Default Value'));
    });

    group('NewBlocFeatureCustomEvent', () {
      blocTest<NewBlocFeatureBloc, NewBlocFeatureState>(
        'emits nothing',
        build: NewBlocFeatureBloc.new,
        act: (bloc) => bloc.add(const NewBlocFeatureCustomEvent(property: '')),
        expect: () => <NewBlocFeatureState>[],
      );
    });
  });
}
