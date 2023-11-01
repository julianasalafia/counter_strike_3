import 'package:counter_strike_3/app/data_sources/models/user/sign_in_user.dart';
import 'package:counter_strike_3/app/domain/entities/user/user.dart' as domain;
import 'package:counter_strike_3/app/domain/exceptions/authentication/session_exception.dart';
import 'package:counter_strike_3/app/domain/repositories/authentication/session_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SessionFirebaseRepository implements SessionRepository {
  final FirebaseAuth firebaseAuth;

  SessionFirebaseRepository({required this.firebaseAuth});

  @override
  Future<domain.User> getSignedInUser() async {
    final User? currentUser = firebaseAuth.currentUser;

    if (currentUser == null) {
      throw SessionException("No user signed in");
    }

    return SignInUser(
      id: currentUser.uid,
      name: currentUser.displayName ?? '',
    );
  }

  @override
  Future<void> signOut() {
    return firebaseAuth.signOut();
  }
}
