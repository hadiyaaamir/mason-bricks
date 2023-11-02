part of 'view.dart';

class NonePage extends StatelessWidget {
  const NonePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const NonePage());
  }

  @override
  Widget build(BuildContext context) {
     return const NoneView(); 
  }
}
