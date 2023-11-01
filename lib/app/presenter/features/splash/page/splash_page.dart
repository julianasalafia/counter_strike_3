import 'package:flutter/material.dart';

import '../controller/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Counter Strike 3',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
