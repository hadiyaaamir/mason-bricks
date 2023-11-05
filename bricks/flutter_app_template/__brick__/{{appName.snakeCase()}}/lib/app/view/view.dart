import 'package:authentication_repository/authentication_repository.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:{{appName.snakeCase()}}/app/app.dart';
import 'package:{{appName.snakeCase()}}/utils/constants/constants.dart';
{{#customTheme}}import 'package:{{appName.snakeCase()}}/theme/theme.dart';{{/customTheme}}
import 'package:localization/localization.dart';

part 'app.dart';
part 'app_view.dart';
