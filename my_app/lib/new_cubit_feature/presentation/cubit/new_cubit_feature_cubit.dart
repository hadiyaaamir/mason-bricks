import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'new_cubit_feature_state.dart';

class NewCubitFeatureCubit extends Cubit<NewCubitFeatureState> {
  NewCubitFeatureCubit() : super(const NewCubitFeatureInitial());

  FutureOr<void> customFunction() {
    // TODO: Add Logic
  }
}
