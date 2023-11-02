part of 'view.dart';

class NewBlocFeaturePage extends StatelessWidget {
  const NewBlocFeaturePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const NewBlocFeaturePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewBlocFeatureBloc(),
      child: const NewBlocFeatureView(),
    );  
  }
}
