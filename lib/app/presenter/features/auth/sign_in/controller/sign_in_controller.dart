import 'package:counter_strike_3/app/data_sources/models/user/sign_in_user.dart';
import 'package:counter_strike_3/app/domain/exceptions/authentication/sign_in_exception.dart';
import 'package:counter_strike_3/app/domain/repositories/authentication/sign_in_anonymously_repository.dart';
import 'package:counter_strike_3/app/domain/repositories/user_repository.dart';

class SignInController {
  final SignInAnonymouslyRepository signInRepository;
  final UserRepository userRepository;

  SignInController({
    required this.signInRepository,
    required this.userRepository,
  });

  Future<void> createUser(String id, String name) async {
    final user = SignInUser(
      id: id,
      name: name,
    );

    await userRepository.put(user.id, user);
  }

  Future<void> signInAnonymously(String name) async {
    final userCredential = await signInRepository.signIn(
      signInParams: null,
    );

    if (userCredential.user == null) {
      throw SignInException('User is null in anonymous sign in');
    }

    return createUser(userCredential.user!.uid, name);
  }
}
