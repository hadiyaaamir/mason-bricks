import 'dart:io';

import 'package:mason/mason.dart';

Future<void> main() async {
  final brick = Brick.git(
    GitPath(
      "https://github.com/hadiyaaamir/mason-bricks.git",
      path: 'bricks/flutter_app_template',
    ),
  );

  Map<String, dynamic> variables = <String, dynamic>{
    'appName': 'Easy Localization App',
    'companyName': 'com.vend',
    'appDescription': 'A New Flutter App',
    'customTheme': false,
    'validators': [
      'email',
      'password',
      'confirmed password',
      'string input',
      'numeric input',
      'username',
    ],
  };

  final generator = await MasonGenerator.fromBrick(brick);
  final target = DirectoryGeneratorTarget(Directory.current);

  // Pre-gen hook
  final pregenProgress = Logger().progress('Compiling pre-gen hook...');
  await generator.hooks.preGen(
    vars: variables,
    onVarsChanged: (vars) => variables = vars,
  );
  pregenProgress.complete('Compiled pre-gen hook');

  // Brick
  final brickProgress = Logger().progress('Generating brick...');
  await generator.generate(target, vars: variables);
  brickProgress.complete('Brick generated');

  // Post-gen hook
  final postgenProgress = Logger().progress('Compiling post-gen hook...');
  await generator.hooks.postGen(vars: variables);
  postgenProgress.complete('Compiled post-gen hook');
}
