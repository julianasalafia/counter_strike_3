import 'package:firebase_auth/firebase_auth.dart';

import '../../../domain/repositories/authentication/sign_in_with_google_repository.dart';

class SignWithGoogleFirebaseAnonymouslyRepository implements SignInWithGoogleRepository {
  final FirebaseAuth firebaseAuth;

  SignWithGoogleFirebaseAnonymouslyRepository({required this.firebaseAuth});

  @override
  Future<UserCredential> signIn({required void signInParams}) {
    return firebaseAuth.signInAnonymously();
  }
}
