import 'package:counter_strike_3/app/domain/repositories/authentication/sign_in_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class SignInWithGoogleRepository implements SignInRepository<void, UserCredential> {}
