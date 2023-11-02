part of 'view.dart';

class NewFeaturePage extends StatelessWidget {
  const NewFeaturePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const NewFeaturePage());
  }

  @override
  Widget build(BuildContext context) {
     return const NewFeatureView(); 
  }
}
