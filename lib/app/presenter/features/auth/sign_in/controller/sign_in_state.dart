import 'package:counter_strike_3/app/presenter/features/auth/sign_in/controller/sign_in_controller.dart';
import 'package:counter_strike_3/app/presenter/features/auth/sign_in/page/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../../domain/repositories/authentication/sign_in_repository.dart';

abstract class SignInState extends State<SignInPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final SignInController controller;

  final nameController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller = SignInController(
      signInRepository: GetIt.I.get(),
      userRepository: GetIt.I.get(),
    );
  }

  bool validateForm() {
    if (formKey.currentState!.validate()) {
      return true;
    }

    return false;
  }

  void signIn() {

    try {
      if (!validateForm()) {
        return;
      }

      controller.signInAnonymously(nameController.text);
    } catch(e){
      print(e);
    }


  }
}
