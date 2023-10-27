import '../../domain/entities/entity.dart';
import '../../domain/repositories/entity_repository.dart';

class EntityRepositoryMock extends EntityRepository {
  List<Entity> _list = [];

  EntityRepositoryMock();

  @override
  Future<List<Entity>> getLivingEntities() async {
    return _list.where((element) => element.isAlive).toList();
  }

  @override
  Future<void> addEntity(Entity entity) async {
    _list.add(entity);
  }

  @override
  Future<void> addEntityList(List<Entity> entities) async {
    _list.addAll(entities);
  }

  @override
  Future<List<Entity>> getEntities() async {
    return _list;
  }

  @override
  Future<void> removeDyingEntities() async {
    _list.removeWhere((element) => element.isAlive == false);
  }

  @override
  Stream<List<Entity>> getEntitiesStream() {
    return Stream.value(_list);
  }
}
