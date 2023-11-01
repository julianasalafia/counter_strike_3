import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_strike_3/app/domain/entities/user/user.dart';
import 'package:counter_strike_3/app/domain/repositories/user_repository.dart';

class UserRepositoryFirebase implements UserRepository {
  final FirebaseFirestore firestore;

  UserRepositoryFirebase({required this.firestore});

  final collection = 'users';

  @override
  Future<void> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> deleteMany(List<String> keys) {
    // TODO: implement deleteMany
    throw UnimplementedError();
  }

  @override
  Future<User?> get(String key) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getMany() {
    // TODO: implement getMany
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getWhere(bool Function(User value) predicate) {
    // TODO: implement getWhere
    throw UnimplementedError();
  }

  @override
  Future<void> put(String key, User value) {
    late final DocumentReference doc;

    if (key.isEmpty) {
      doc = firestore.collection(collection).doc();
    } else {
      doc = firestore.collection(collection).doc(key);
    }

    return doc.set(value.toJson());
  }

  @override
  Future<void> putMany(List<User> values) {
    // TODO: implement putMany
    throw UnimplementedError();
  }
}
