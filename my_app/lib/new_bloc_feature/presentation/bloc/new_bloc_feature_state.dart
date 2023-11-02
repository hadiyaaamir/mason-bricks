part of 'new_bloc_feature_bloc.dart';


class NewBlocFeatureState extends Equatable {

  const NewBlocFeatureState({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  NewBlocFeatureState copyWith({
    String? customProperty,
  }) {
    return NewBlocFeatureState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}


class NewBlocFeatureInitial extends NewBlocFeatureState {
  const NewBlocFeatureInitial() : super();
}
