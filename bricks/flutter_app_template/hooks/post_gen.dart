import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final appName = context.vars['appName'].toString().snakeCase;
  final appDirectory = Directory('${Directory.current.path}/$appName');

  await Future.wait([
    // main app pubspec
    addAllDependencies(
      path: appDirectory.path,
      dependencies: [
        'bloc',
        'flutter_bloc',
        'intl',
        'equatable',
        'formz',
        'get_it',
        'authentication_repository --path="packages/authentication_repository"',
        'cache_client --path="packages/cache_client"'
      ],
      devDependencies: ['bloc_test', 'mocktail'],
    ),

    // authentication_data_source package
    addAllDependencies(
      path: '${appDirectory.path}/packages/authentication_data_source',
      dependencies: ['equatable', 'cache_client --path="../cache_client"'],
      devDependencies: ['mocktail', 'test'],
    ),

    // authentication_repository package
    addAllDependencies(
      path: '${appDirectory.path}/packages/authentication_repository',
      dependencies: [
        'equatable',
        'authentication_data_source --path="../authentication_data_source"',
      ],
      devDependencies: ['mocktail', 'test'],
    ),

    // cache_client package
    addAllDependencies(
      path: '${appDirectory.path}/packages/cache_client',
      dependencies: ['hive', 'path_provider'],
      devDependencies: [
        'mocktail',
        'path_provider_platform_interface',
        'plugin_platform_interface',
        'test',
      ],
    ),
  ]);
}

Future<void> addAllDependencies({
  required String path,
  required List<String> dependencies,
  required List<String> devDependencies,
}) async {
  await Future.wait([
    addDependencies(path: path, dependencies: dependencies),
    addDevDependencies(path: path, devDependencies: devDependencies),
  ]);
}

Future<void> addDependencies({
  required String path,
  required List<String> dependencies,
  bool devDependency = false,
}) async {
  final cdCommand = 'cd $path';
  final pubAddCommand = 'flutter pub add${devDependency ? ' -d' : ''}';

  await Future.wait(
    List.generate(
      dependencies.length,
      (index) {
        final command = '$cdCommand && $pubAddCommand ${dependencies[index]}';
        return Process.run('bash', ['-c', command]);
      },
    ),
  );

  await Process.run('bash', ['-c', '$cdCommand && flutter pub get']);
}

Future<void> addDevDependencies({
  required String path,
  required List<String> devDependencies,
}) async {
  await addDependencies(
    path: path,
    dependencies: devDependencies,
    devDependency: true,
  );
}
