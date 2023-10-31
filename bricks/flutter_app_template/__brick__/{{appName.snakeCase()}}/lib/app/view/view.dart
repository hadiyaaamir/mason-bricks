import 'package:flutter/material.dart';
import 'package:{{appName.snakeCase()}}/l10n/l10n.dart';

{{^customTheme}}import 'package:{{appName.snakeCase()}}/utils/constants/constants.dart';{{/customTheme}}
{{#customTheme}}import 'package:{{appName.snakeCase()}}/theme/theme.dart';{{/customTheme}}

part 'app.dart';