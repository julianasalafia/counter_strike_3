import 'package:counter_strike_3/app/presenter/features/auth/sign_in/page/sign_in_page.dart';
import 'package:counter_strike_3/app/presenter/features/splash/controller/splash_controller.dart';
import 'package:counter_strike_3/app/presenter/features/testing/page/testing_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../page/splash_page.dart';

abstract class SplashState extends State<SplashPage> {
  late final SplashController controller;

  @override
  initState() {
    super.initState();
    controller = SplashController(
      sessionRepository: GetIt.instance.get(),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      handleRedirect();
    });
  }

  handleRedirect() async {
    try {
      await redirectToHome();
    } catch (e) {
      await redirectToSignIn();
    }
  }

  Future<void> redirectToHome() async {
    await controller.getUserFromSession();

    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => TestingPage(),
      ),
    );
  }

  Future<void> redirectToSignIn() {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SignInPage(),
      ),
    );
  }
}
