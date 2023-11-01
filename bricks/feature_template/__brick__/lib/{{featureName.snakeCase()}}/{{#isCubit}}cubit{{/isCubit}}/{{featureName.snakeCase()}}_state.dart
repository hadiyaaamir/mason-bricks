part of '{{featureName.snakeCase()}}_cubit.dart';


class {{featureName.pascalCase()}}State extends Equatable {

  const {{featureName.pascalCase()}}State({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  {{featureName.pascalCase()}}State copyWith({
    String? customProperty,
  }) {
    return {{featureName.pascalCase()}}State(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

class {{featureName.pascalCase()}}Initial extends {{featureName.pascalCase()}}State {
  const {{featureName.pascalCase()}}Initial() : super();
}
