// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_bloc_feature/new_bloc_feature.dart';


void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect(NewBlocFeaturePage.route(), isA<MaterialPageRoute<dynamic>>());
      });
    });

    testWidgets('renders NewBlocFeatureView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: NewBlocFeaturePage()));
      expect(find.byType(NewBlocFeatureView), findsOneWidget);
    });
  });
}
