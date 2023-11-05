import 'package:flutter/material.dart';
import 'package:{{appName.snakeCase()}}/app/app.dart';
import 'package:{{appName.snakeCase()}}/bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(() => const App());
}
