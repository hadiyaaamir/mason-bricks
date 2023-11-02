// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_feature/new_feature.dart';

void main() {
  group('NewFeatureBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: NewFeatureBody()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
