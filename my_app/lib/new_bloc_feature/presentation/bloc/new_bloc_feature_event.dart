part of 'new_bloc_feature_bloc.dart';

abstract class NewBlocFeatureEvent extends Equatable {
  const NewBlocFeatureEvent();

  @override
  List<Object> get props => [];

}

class NewBlocFeatureCustomEvent extends NewBlocFeatureEvent {
  const NewBlocFeatureCustomEvent({required this.property});
  final String property;

  @override
  List<Object> get props => [property];
}