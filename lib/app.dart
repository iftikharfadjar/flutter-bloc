import 'package:bloc1/pages/home/home.dart';
import 'package:flutter/material.dart';
import './bloc/export.dart';

class App extends StatelessWidget {
  /// {@macro app}
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppView();
    // return MultiBlocProvider(providers: [
    //   // BlocProvider(create : (context) => )
    // ], child: AppView());
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
