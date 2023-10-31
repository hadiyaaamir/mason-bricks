{{^customTheme}}import 'package:flutter/material.dart';{{/customTheme}}

class Constants {
  Constants._();

  {{^customTheme}}static const colorSchemeSeed = Colors.deepPurple;{{/customTheme}}
}
