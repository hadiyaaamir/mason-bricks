import 'package:flutter/material.dart';
import 'package:{{appName.snakeCase()}}/app/app.dart';
import 'package:{{appName.snakeCase()}}/bootstrap.dart';
import 'package:localization/localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await bootstrap(() => const App());
}
