{{#isBloc}}export 'bloc/{{featureName.snakeCase()}}_bloc.dart';{{/isBloc}}{{#isCubit}}export 'cubit/{{featureName.snakeCase()}}_cubit.dart';{{/isCubit}}
export 'view/view.dart';
export 'widgets/widgets.dart';
