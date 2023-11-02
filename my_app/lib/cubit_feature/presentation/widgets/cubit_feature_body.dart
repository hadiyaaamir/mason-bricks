import 'package:flutter/material.dart';
import 'package:my_app/cubit_feature/cubit_feature.dart';

class CubitFeatureBody extends StatelessWidget {
  const CubitFeatureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitFeatureCubit, CubitFeatureState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
