import 'package:mason/mason.dart';

void run(HookContext context) {
  final companyName = context.vars['companyName'];

  final appNameSnakeCase = context.vars['appName'].toString().snakeCase;
  context.vars['applicationId'] = '$companyName.$appNameSnakeCase';

  final appNameParamCase = context.vars['appName'].toString().paramCase;
  context.vars['bundleId'] = '$companyName.$appNameParamCase';

  final List validators = context.vars['validators'];
  context.vars['hasValidators'] = validators.isNotEmpty;

  context.vars['email'] = validators.contains('email');
  context.vars['username'] = validators.contains('username');
  context.vars['password'] = validators.contains('password');
  context.vars['confirmedPassword'] = validators.contains('confirmed password');
  context.vars['stringInput'] = validators.contains('string input');
  context.vars['numericInput'] = validators.contains('numeric input');
}
