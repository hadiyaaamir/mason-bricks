// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/none/none.dart';


void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect(NonePage.route(), isA<MaterialPageRoute<dynamic>>());
      });
    });

    testWidgets('renders NoneView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: NonePage()));
      expect(find.byType(NoneView), findsOneWidget);
    });
  });
}
