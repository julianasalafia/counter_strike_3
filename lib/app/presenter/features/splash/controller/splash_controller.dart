import 'package:counter_strike_3/app/domain/repositories/authentication/session_repository.dart';
import '../../../../domain/entities/user/user.dart';

class SplashController {
  final SessionRepository sessionRepository;

  SplashController({
    required this.sessionRepository,
  });

  Future<User> getUserFromSession() {
    return sessionRepository.getSignedInUser();
  }
}
