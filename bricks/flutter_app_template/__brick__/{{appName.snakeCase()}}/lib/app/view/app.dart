part of 'view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '{{{appName.titleCase()}}}',
      theme: {{#customTheme}}AppTheme().appTheme{{/customTheme}}{{^customTheme}}ThemeData(
        colorSchemeSeed: Constants.colorSchemeSeed,
        useMaterial3: true,
      ){{/customTheme}},
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const Text('Home Page'),
    );
  }
}
