part of 'cubit_feature_cubit.dart';


class CubitFeatureState extends Equatable {

  const CubitFeatureState({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  CubitFeatureState copyWith({
    String? customProperty,
  }) {
    return CubitFeatureState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

class CubitFeatureInitial extends CubitFeatureState {
  const CubitFeatureInitial() : super();
}
