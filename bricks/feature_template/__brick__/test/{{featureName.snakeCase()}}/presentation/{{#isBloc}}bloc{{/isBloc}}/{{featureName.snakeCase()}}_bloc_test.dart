// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';

void main() {
  group('{{featureName.pascalCase()}}Bloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect({{featureName.pascalCase()}}Bloc(), isNotNull);
      });
    });

    test('initial state has default values', () {
      final {{featureName.camelCase()}}Bloc = {{featureName.pascalCase()}}Bloc();
      expect({{featureName.camelCase()}}Bloc.state.customProperty, equals('Default Value'));
    });

    group('{{featureName.pascalCase()}}CustomEvent', () {
      blocTest<{{featureName.pascalCase()}}Bloc, {{featureName.pascalCase()}}State>(
        'emits nothing',
        build: {{featureName.pascalCase()}}Bloc.new,
        act: (bloc) => bloc.add(const {{featureName.pascalCase()}}CustomEvent(property: '')),
        expect: () => <{{featureName.pascalCase()}}State>[],
      );
    });
  });
}
