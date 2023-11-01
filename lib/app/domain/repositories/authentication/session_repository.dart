import '../../entities/user/user.dart';

abstract class SessionRepository {
  Future<User> getSignedInUser();

  Future<void> signOut();

}
