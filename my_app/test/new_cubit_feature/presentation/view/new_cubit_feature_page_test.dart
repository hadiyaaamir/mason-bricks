// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_cubit_feature/new_cubit_feature.dart';


void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect(NewCubitFeaturePage.route(), isA<MaterialPageRoute<dynamic>>());
      });
    });

    testWidgets('renders NewCubitFeatureView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: NewCubitFeaturePage()));
      expect(find.byType(NewCubitFeatureView), findsOneWidget);
    });
  });
}
