part of 'view.dart';

class {{featureName.pascalCase()}}Page extends StatelessWidget {
  const {{featureName.pascalCase()}}Page({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const {{featureName.pascalCase()}}Page());
  }

  @override
  Widget build(BuildContext context) {
    {{^isNone}}return BlocProvider(
      create: (context) => {{#isBloc}}{{featureName.pascalCase()}}Bloc(){{/isBloc}}{{#isCubit}}{{featureName.pascalCase()}}Cubit(){{/isCubit}},
      child: const {{featureName.pascalCase()}}View(),
    ); {{/isNone}} {{#isNone}}return const {{featureName.pascalCase()}}View(); {{/isNone}}
  }
}
