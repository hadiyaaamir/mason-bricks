import 'package:flutter/material.dart';
import 'package:my_app/new_bloc_feature/new_bloc_feature.dart';

class NewBlocFeatureBody extends StatelessWidget {
  const NewBlocFeatureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBlocFeatureBloc, NewBlocFeatureState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
