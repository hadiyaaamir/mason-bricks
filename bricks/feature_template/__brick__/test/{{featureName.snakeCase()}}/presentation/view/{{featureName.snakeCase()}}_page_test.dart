// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';


void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect({{featureName.pascalCase()}}Page.route(), isA<MaterialPageRoute<dynamic>>());
      });
    });

    testWidgets('renders {{featureName.pascalCase()}}View', (tester) async {
      await tester.pumpWidget(MaterialApp(home: {{featureName.pascalCase()}}Page()));
      expect(find.byType({{featureName.pascalCase()}}View), findsOneWidget);
    });
  });
}
