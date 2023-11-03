part of 'localization.dart';

/// A class to translate and get Strings depending on the locale

class LocaleStrings {
  LocaleStrings._();

  /// Title of the application
  static const String appTitle = '{{{appName.titleCase()}}}';

  /// Home Page title
  static String get homePageTitle => 'home.title'.tr();
}
