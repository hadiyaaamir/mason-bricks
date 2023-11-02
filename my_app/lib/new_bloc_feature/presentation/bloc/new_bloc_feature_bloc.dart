import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'new_bloc_feature_event.dart';
part 'new_bloc_feature_state.dart';

class NewBlocFeatureBloc extends Bloc<NewBlocFeatureEvent, NewBlocFeatureState> {
  NewBlocFeatureBloc() : super(const NewBlocFeatureInitial()) {
    on<NewBlocFeatureCustomEvent>(_onNewBlocFeatureEvent);
  }

  FutureOr<void> _onNewBlocFeatureEvent(
    NewBlocFeatureCustomEvent event,
    Emitter<NewBlocFeatureState> emit,
  ) {
    // TODO: Add Logic
  }
}
