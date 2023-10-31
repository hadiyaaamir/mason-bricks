import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final appName = context.vars['appName'].toString().snakeCase;
  final appDirectory = Directory('${Directory.current.path}/$appName');

  // Add dependencies

  String dependencyCommand = 'cd ${appDirectory.path}${dependencies}';
  final dependencyResult = await Process.run('bash', ['-c', dependencyCommand]);

  if (dependencyResult.exitCode != 0) {
    context.logger.err(
      '\nError running flutter pub get: ${dependencyResult.stderr}',
    );
  }

  // Flutter pub get

  final bashCommand = 'cd ${appDirectory.path} && flutter pub get';
  final pubGetResult = await Process.run('bash', ['-c', bashCommand]);

  if (pubGetResult.exitCode != 0) {
    context.logger.err(
      '\nError running flutter pub get: ${pubGetResult.stderr}',
    );
  }
}

// Create dependencies command
String get dependencies {
  final dependencies = ['bloc', 'flutter_bloc', 'intl', 'equatable', 'formz'];
  final devDependencies = ['bloc_test', 'mocktail', 'very_good_analysis'];

  String command = '';
  for (final dependency in dependencies) {
    command += ' && flutter pub add $dependency';
  }
  for (final devDependency in devDependencies) {
    command += ' && flutter pub add -d $devDependency';
  }
  return command;
}
