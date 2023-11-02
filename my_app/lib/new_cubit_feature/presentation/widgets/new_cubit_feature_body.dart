import 'package:flutter/material.dart';
import 'package:my_app/new_cubit_feature/new_cubit_feature.dart';

class NewCubitFeatureBody extends StatelessWidget {
  const NewCubitFeatureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewCubitFeatureCubit, NewCubitFeatureState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
