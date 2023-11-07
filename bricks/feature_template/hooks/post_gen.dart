import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final appDirectory = Directory.current;

  if (!appDirectory.existsSync()) return;

  final gitKeepFiles = appDirectory
      .listSync(recursive: true, followLinks: false)
      .where((entity) => entity is File && entity.path.endsWith('.gitkeep'));

  for (final file in gitKeepFiles) {
    file.deleteSync();
  }
}
