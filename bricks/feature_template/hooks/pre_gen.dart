import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

Future<void> run(HookContext context) async {
  final stateManagement = context.vars['stateManagement'];

  context.vars['isBloc'] = stateManagement == 'bloc';
  context.vars['isCubit'] = stateManagement == 'cubit';
  context.vars['isNone'] = stateManagement == 'none';

  final directory = Directory.current.path;
  List<String> folders;

  try {
    Platform.isWindows
        ? folders = directory.split(r'\').toList()
        : folders = directory.split('/').toList();

    final libIndex = folders.indexWhere((folder) => folder == 'lib');
    final featurePath = folders.sublist(libIndex + 1, folders.length).join('/');
    final pubSpecFile =
        File('${folders.sublist(0, libIndex).join('/')}/pubspec.yaml');

    final content = await pubSpecFile.readAsString();
    final yamlMap = loadYaml(content);
    final packageName = yamlMap['name'];

    if (packageName == null) throw PubspecNameException();

    final featureName = (context.vars['featureName'] as String).snakeCase;
    final fullPath = ('$packageName/$featurePath/$featureName');
    context.vars['fullPath'] = fullPath.replaceAll('//', '/');
  } on RangeError catch (_) {
    context.logger.alert(red.wrap('Could not find lib folder in $directory'));
    context.logger.alert(red.wrap('Re-run this brick inside your lib folder'));
    throw Exception();
  } on FileSystemException catch (_) {
    context.logger.alert(
      red.wrap(
        'Could not find pubspec.yaml folder in ${directory.replaceAll('\\lib', '')}',
      ),
    );
    throw Exception();
  } on PubspecNameException catch (_) {
    context.logger.alert(
      red.wrap('Could not read package name in pubspec.yaml}'),
    );
    context.logger.alert(red.wrap('Does your pubspec have a name: ?'));
    throw Exception();
  } on Exception catch (e) {
    throw e;
  }
}

class PubspecNameException implements Exception {}
