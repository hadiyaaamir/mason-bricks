part of 'view.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final _appCubit = AppCubit(
    authenticationRepository: GetIt.I<AuthenticationRepository>(),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _appCubit,
      child: const AppView(),
    );
  }
}
