import 'package:counter_strike_3/app/presenter/features/auth/sign_in/page/sign_in_page.dart';
import 'package:flutter/material.dart';

abstract class SignInState extends State<SignInPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  bool validateForm() {
    if (formKey.currentState!.validate()) {
      return true;
    }

    return false;
  }

  void signIn() {
    if (!validateForm()) {
      return;
    }



  }
}
