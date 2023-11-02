// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/new_cubit_feature/new_cubit_feature.dart';

void main() {
  group('NewCubitFeatureBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => NewCubitFeatureCubit(),
          child: MaterialApp(home: NewCubitFeatureBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
