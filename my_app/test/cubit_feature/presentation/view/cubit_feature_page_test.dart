// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/cubit_feature/cubit_feature.dart';


void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect(CubitFeaturePage.route(), isA<MaterialPageRoute<dynamic>>());
      });
    });

    testWidgets('renders CubitFeatureView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: CubitFeaturePage()));
      expect(find.byType(CubitFeatureView), findsOneWidget);
    });
  });
}
