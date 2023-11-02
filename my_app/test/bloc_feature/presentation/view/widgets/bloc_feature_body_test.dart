// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/bloc_feature/bloc_feature.dart';

void main() {
  group('BlocFeatureBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => BlocFeatureBloc(),
          child: MaterialApp(home: BlocFeatureBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
