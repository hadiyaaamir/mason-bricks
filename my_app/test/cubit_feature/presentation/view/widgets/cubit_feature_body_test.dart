// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/cubit_feature/cubit_feature.dart';

void main() {
  group('CubitFeatureBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => CubitFeatureCubit(),
          child: MaterialApp(home: CubitFeatureBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
