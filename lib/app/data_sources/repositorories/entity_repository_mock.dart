import '../../domain/entities/entity.dart';
import '../../domain/repositories/entity_repository.dart';

class EntityRepositoryMock extends EntityRepository {
  List<Entity> _list = [];

  EntityRepositoryMock();

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
  Future<Entity?> get(String key) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Stream<List<Entity>> getAsStream() {
    // TODO: implement getAsStream
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getLivingEntities() {
    // TODO: implement getLivingEntities
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getMany() {
    // TODO: implement getMany
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getWhere(bool Function(Entity value) predicate) {
    // TODO: implement getWhere
    throw UnimplementedError();
  }

  @override
  Future<void> put(String key, Entity value) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<void> putMany(List<Entity> values) {
    // TODO: implement putMany
    throw UnimplementedError();
  }

  @override
  Future<void> removeDyingEntities() {
    // TODO: implement removeDyingEntities
    throw UnimplementedError();
  }

  // @override
  // Future<List<Entity>> getLivingEntities() async {
  //   return _list.where((element) => element.isAlive).toList();
  // }
  //
  // @override
  // Future<void> addEntity(Entity entity) async {
  //   _list.add(entity);
  // }
  //
  // @override
  // Future<void> addEntityList(List<Entity> entities) async {
  //   _list.addAll(entities);
  // }
  //
  // @override
  // Future<List<Entity>> getEntities() async {
  //   return _list;
  // }
  //
  // @override
  // Future<void> removeDyingEntities() async {
  //   _list.removeWhere((element) => element.isAlive == false);
  // }
  //
  // @override
  // Stream<List<Entity>> getEntitiesStream() {
  //   return Stream.value(_list);
  // }
}
