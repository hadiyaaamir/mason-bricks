import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc_feature_event.dart';
part 'bloc_feature_state.dart';

class BlocFeatureBloc extends Bloc<BlocFeatureEvent, BlocFeatureState> {
  BlocFeatureBloc() : super(const BlocFeatureInitial()) {
    on<BlocFeatureCustomEvent>(_onBlocFeatureEvent);
  }

  FutureOr<void> _onBlocFeatureEvent(
    BlocFeatureCustomEvent event,
    Emitter<BlocFeatureState> emit,
  ) {
    // TODO: Add Logic
  }
}
