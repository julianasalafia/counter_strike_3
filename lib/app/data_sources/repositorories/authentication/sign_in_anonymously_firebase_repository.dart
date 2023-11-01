import 'package:counter_strike_3/app/domain/repositories/authentication/sign_in_anonymously_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInAnonymouslyFirebaseRepository implements SignInAnonymouslyRepository {
  final FirebaseAuth firebaseAuth;

  SignInAnonymouslyFirebaseRepository({required this.firebaseAuth});

  @override
  Future<UserCredential> signIn({required void signInParams}) {
    return firebaseAuth.signInAnonymously();
  }
}
