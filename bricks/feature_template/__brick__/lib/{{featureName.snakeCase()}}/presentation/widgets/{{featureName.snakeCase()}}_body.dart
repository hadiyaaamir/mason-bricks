import 'package:flutter/material.dart';
{{^isNone}}import 'package:{{{fullPath}}}/{{featureName.snakeCase()}}.dart';{{/isNone}}

class {{featureName.pascalCase()}}Body extends StatelessWidget {
  const {{featureName.pascalCase()}}Body({super.key});

  @override
  Widget build(BuildContext context) {
    {{^isNone}}return BlocBuilder<{{featureName.pascalCase()}}{{stateManagement.titleCase()}}, {{featureName.pascalCase()}}State>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );{{/isNone}}{{#isNone}}return const Center(child:Text('{{featureName.pascalCase()}}Page'));{{/isNone}}
  }
}
