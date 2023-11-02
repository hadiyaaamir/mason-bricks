part of 'new_cubit_feature_cubit.dart';


class NewCubitFeatureState extends Equatable {

  const NewCubitFeatureState({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  NewCubitFeatureState copyWith({
    String? customProperty,
  }) {
    return NewCubitFeatureState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

class NewCubitFeatureInitial extends NewCubitFeatureState {
  const NewCubitFeatureInitial() : super();
}
