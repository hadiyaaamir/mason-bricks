import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

Future<void> run(HookContext context) async {
  final stateManagement = context.vars['stateManagement'];

  context.vars['isBloc'] = stateManagement == 'bloc';
  context.vars['isCubit'] = stateManagement == 'cubit';
  context.vars['isNone'] = stateManagement == 'none';

  final directory = Directory.current.path;

  final pubSpecFile = File('$directory/pubspec.yaml');
  final content = await pubSpecFile.readAsString();
  final yamlMap = loadYaml(content);
  final packageName = yamlMap['name'];

  final featureName = (context.vars['featureName'] as String).snakeCase;
  context.vars['fullPath'] = '$packageName/$featureName';
}
