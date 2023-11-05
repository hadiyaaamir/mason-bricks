import 'package:{{appName.snakeCase()}}/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localization/localization.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      EasyLocalization(
        path: kPath,
        supportedLocales: kSupportedLocales,
        fallbackLocale: kFallbackLocale,
        startLocale: kStartingLocale,
        child: Builder(
          builder: (context) {
            return MaterialApp(
              title: LocaleStrings.appTitle,
              theme: ThemeData(
                colorSchemeSeed: kColorSchemeSeed,
                useMaterial3: true,
              ),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              builder: (context, child) => widget,
            );
          },
        ),
      ),
    );
  }
}
