# {{appName.titleCase()}}


{{appDescription}}

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*This App works on iOS, Android, Web, and Windows._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Working with Translations 🌐

This project relies on the [easy_localisation][easy_localizations_link] package. The logic is encapsulated within a separate [Localization](packages/localization) package in the app.

### Adding Strings

1. To add a new localizable string, open the `locale.json` files in the Localization package at `packages/localization/assets/translations`.

```json
{
  "home": {
    "title": "Home Page"
  }
}
```

2. Then, for each locale, add a new key/value pair

`en.json`

```json
{
  "home": {
    "title": "Home Page"
  },
  "new_string": "New string"
}
```

`es.json`

```json
{
  "home": {
    "title": "Pagina de Inicio"
  },
  "new_string": "nueva cadena"
}
```

3. Creating a static Getter for the String <br>
In the `locale_strings.dart` file in the Localization package at `packages/localization/lib/src`, create a getter for your new string.

```dart
part of 'localization.dart';

/// A class to translate and get Strings depending on the locale

class LocaleStrings {
  LocaleStrings._();

  /// Title of the application
  static const String appTitle = '{{{appName.titleCase()}}}';

  /// Home Page title
  static String get homePageTitle => 'home.title'.tr();

  /// New String
  static String get newString => 'new_string'.tr();
}
```

4. Use the new string <br>

```dart
import 'package:localization/localization.dart';

@override
Widget build(BuildContext context) {
  return Text(LocaleStrings.newString);
}
```

### Adding Translations

1. For each supported locale, add a new JSON file in `assets/translations` inside the Localization package.

```
├── packages
│   ├── localization
│   │   ├── assets
│   │   │   └── translations
│   │   │   │   ├── en.json
│   │   │   │   └── es.json
```

2. The files may follow either format

```
assets
└── translations
    ├── {languageCode}.{ext}                  //only language code
    └── {languageCode}-{countryCode}.{ext}    //or full locale code
```
`Example:`
```
assets
└── translations
    ├── en.json
    └── en-US.json 
```

3. Add the translated strings to each new `.json` file that you create.






[easy_localizations_link]: https://pub.dev/packages/easy_localization

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
