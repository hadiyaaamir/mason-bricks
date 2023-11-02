// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/bloc_feature/bloc_feature.dart';


void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect(BlocFeaturePage.route(), isA<MaterialPageRoute<dynamic>>());
      });
    });

    testWidgets('renders BlocFeatureView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: BlocFeaturePage()));
      expect(find.byType(BlocFeatureView), findsOneWidget);
    });
  });
}
