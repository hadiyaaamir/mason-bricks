part of 'view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '{{{appName.titleCase()}}}',
      theme: {{#customTheme}}AppTheme().appTheme{{/customTheme}}{{^customTheme}}ThemeData(
        colorSchemeSeed: kColorSchemeSeed,
        useMaterial3: true,
      ){{/customTheme}},
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const Text('Home Page'),
    );
  }
}