import 'package:flutter/material.dart';
import 'package:my_app/bloc_feature/bloc_feature.dart';

class BlocFeatureBody extends StatelessWidget {
  const BlocFeatureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocFeatureBloc, BlocFeatureState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
