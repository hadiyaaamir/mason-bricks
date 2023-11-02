// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_feature/new_feature.dart';


void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect(NewFeaturePage.route(), isA<MaterialPageRoute<dynamic>>());
      });
    });

    testWidgets('renders NewFeatureView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: NewFeaturePage()));
      expect(find.byType(NewFeatureView), findsOneWidget);
    });
  });
}
