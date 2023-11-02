// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/none/none.dart';

void main() {
  group('NoneBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: NoneBody()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
