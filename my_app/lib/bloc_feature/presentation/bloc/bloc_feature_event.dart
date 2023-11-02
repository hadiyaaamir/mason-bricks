part of 'bloc_feature_bloc.dart';

abstract class BlocFeatureEvent extends Equatable {
  const BlocFeatureEvent();

  @override
  List<Object> get props => [];

}


class BlocFeatureCustomEvent extends BlocFeatureEvent {
  const BlocFeatureCustomEvent();
}
