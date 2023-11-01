import '../entities/entity/entity.dart';

abstract class Repository<T extends Entity> {
  Future<T?> get(String key);

  Future<List<T>> getMany();

  Future<void> put(String key, T value);

  Future<void> putMany(List<T> values);

  Future<void> delete(String key);

  Future<void> deleteMany(List<String> keys);

  Future<List<T>> getWhere(bool Function(T value) predicate);
}