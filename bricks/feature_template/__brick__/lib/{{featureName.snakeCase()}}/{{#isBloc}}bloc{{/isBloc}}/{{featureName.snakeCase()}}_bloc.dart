import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part '{{featureName.snakeCase()}}_event.dart';
part '{{featureName.snakeCase()}}_state.dart';

class {{featureName.pascalCase()}}Bloc extends Bloc<{{featureName.pascalCase()}}Event, {{featureName.pascalCase()}}State> {
  {{featureName.pascalCase()}}Bloc() : super(const {{featureName.pascalCase()}}Initial()) {
    on<{{featureName.pascalCase()}}CustomEvent>(_on{{featureName.pascalCase()}}Event);
  }

  FutureOr<void> _on{{featureName.pascalCase()}}Event(
    {{featureName.pascalCase()}}CustomEvent event,
    Emitter<{{featureName.pascalCase()}}State> emit,
  ) {
    // TODO: Add Logic
  }
}
