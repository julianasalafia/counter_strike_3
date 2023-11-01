import 'package:counter_strike_3/app/presenter/features/auth/sign_in/controller/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends SignInState {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Counter Strike 3',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              TextFormField(
                validator: Validatorless.multiple([
                  Validatorless.required('Required field'),
                  Validatorless.min(3, 'Minimum 3 characters'),
                ]),
                decoration: const InputDecoration(
                  labelText: 'Nickname',
                  hintText: 'Enter your nickname',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => signIn(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Sign In'),
                    const SizedBox(width: 16),
                    Icon(Icons.login),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
