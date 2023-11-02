part of 'bloc_feature_bloc.dart';


class BlocFeatureState extends Equatable {

  const BlocFeatureState({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  BlocFeatureState copyWith({
    String? customProperty,
  }) {
    return BlocFeatureState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}


class BlocFeatureInitial extends BlocFeatureState {
  const BlocFeatureInitial() : super();
}
