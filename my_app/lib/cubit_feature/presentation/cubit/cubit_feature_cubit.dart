import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'cubit_feature_state.dart';

class CubitFeatureCubit extends Cubit<CubitFeatureState> {
  CubitFeatureCubit() : super(const CubitFeatureInitial());

  FutureOr<void> customFunction() {
    // TODO: Add Logic
  }
}
