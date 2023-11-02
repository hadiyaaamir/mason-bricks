part of 'view.dart';

class NewCubitFeaturePage extends StatelessWidget {
  const NewCubitFeaturePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const NewCubitFeaturePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCubitFeatureCubit(),
      child: const NewCubitFeatureView(),
    );  
  }
}
