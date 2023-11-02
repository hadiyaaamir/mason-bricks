part of 'view.dart';

class BlocFeaturePage extends StatelessWidget {
  const BlocFeaturePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const BlocFeaturePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocFeatureBloc(),
      child: const BlocFeatureView(),
    );  
  }
}
