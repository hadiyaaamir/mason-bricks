part of 'view.dart';

class CubitFeaturePage extends StatelessWidget {
  const CubitFeaturePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const CubitFeaturePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitFeatureCubit(),
      child: const CubitFeatureView(),
    );  
  }
}
