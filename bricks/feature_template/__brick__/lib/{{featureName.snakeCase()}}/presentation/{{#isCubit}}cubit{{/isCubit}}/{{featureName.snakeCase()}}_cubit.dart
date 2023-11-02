import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part '{{featureName.snakeCase()}}_state.dart';

class {{featureName.pascalCase()}}Cubit extends Cubit<{{featureName.pascalCase()}}State> {
  {{featureName.pascalCase()}}Cubit() : super(const {{featureName.pascalCase()}}Initial());

  FutureOr<void> customFunction() {
    // TODO: Add Logic
  }
}
