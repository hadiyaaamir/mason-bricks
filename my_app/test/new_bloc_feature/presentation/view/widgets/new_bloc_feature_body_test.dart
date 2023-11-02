// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_bloc_feature/new_bloc_feature.dart';

void main() {
  group('NewBlocFeatureBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => NewBlocFeatureBloc(),
          child: MaterialApp(home: NewBlocFeatureBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
