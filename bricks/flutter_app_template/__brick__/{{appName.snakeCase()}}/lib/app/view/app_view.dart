part of 'view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: kPath,
      supportedLocales: kSupportedLocales,
      fallbackLocale: kFallbackLocale,
      startLocale: kStartingLocale,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: LocaleStrings.appTitle,
            theme: {{#customTheme}}AppTheme().appTheme{{/customTheme}}{{^customTheme}}ThemeData(
              colorSchemeSeed: kColorSchemeSeed,
              useMaterial3: true,
            ){{/customTheme}},
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            builder: (context, child) => Center(
              child: Text(LocaleStrings.homePageTitle),
            ),
          );
        },
      ),
    );
    
  }
}