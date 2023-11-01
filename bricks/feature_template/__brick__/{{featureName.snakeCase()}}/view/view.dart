import 'package:flutter/material.dart';
{{^isNone}}import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';{{/isNone}}

part '{{featureName.snakeCase()}}_page.dart';
part '{{featureName.snakeCase()}}_view.dart';
