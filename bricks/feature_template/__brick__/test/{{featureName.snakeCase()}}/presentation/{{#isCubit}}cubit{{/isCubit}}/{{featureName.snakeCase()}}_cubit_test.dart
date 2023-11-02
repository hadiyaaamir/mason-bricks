// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';

void main() {
  group('{{featureName.pascalCase()}}Cubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect({{featureName.pascalCase()}}Cubit(),isNotNull);
      });
    });

    test('initial state has default values', () {
      final {{featureName.camelCase()}}Cubit = {{featureName.pascalCase()}}Cubit();
      expect({{featureName.camelCase()}}Cubit.state.customProperty, equals('Default Value'));
    });

    group('customFunction', () { 
      blocTest<{{featureName.pascalCase()}}Cubit, {{featureName.pascalCase()}}State>(
        'emits nothing',
        build: {{featureName.pascalCase()}}Cubit.new,
        act: (cubit) => cubit.customFunction(),
        expect: () => <{{featureName.pascalCase()}}State>[],
      );
    });
    
  });
}
