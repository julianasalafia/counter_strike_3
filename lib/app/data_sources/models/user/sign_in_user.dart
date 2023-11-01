import '../../../domain/entities/user/user.dart';

class SignInUser extends User {
  SignInUser({
    required super.id,
    required super.name,
  });

  @override
  Map<String, dynamic> customJsonFields() {
    return {};
  }
}
