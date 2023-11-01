part of '{{featureName.snakeCase()}}_bloc.dart';

abstract class {{featureName.pascalCase()}}Event extends Equatable {
  const {{featureName.pascalCase()}}Event();

  @override
  List<Object> get props => [];

}


class {{featureName.pascalCase()}}CustomEvent extends {{featureName.pascalCase()}}Event {
  const {{featureName.pascalCase()}}CustomEvent();
}
