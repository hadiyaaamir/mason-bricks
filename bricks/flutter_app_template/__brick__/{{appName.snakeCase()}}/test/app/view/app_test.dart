import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{appName.snakeCase()}}/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(Text), findsOneWidget);
    });
  });
}
