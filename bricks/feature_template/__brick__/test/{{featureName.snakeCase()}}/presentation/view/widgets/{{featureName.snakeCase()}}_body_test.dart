// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';

void main() {
  group('{{featureName.pascalCase()}}Body', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        {{^isNone}}BlocProvider(
          create: (context) => {{featureName.pascalCase()}}{{stateManagement.titleCase()}}(),
          child: MaterialApp(home: {{featureName.pascalCase()}}Body()),
        ){{/isNone}}{{#isNone}}MaterialApp(home: {{featureName.pascalCase()}}Body()){{/isNone}},
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
