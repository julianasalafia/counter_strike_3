import '../entities/entity.dart';

abstract class EntityRepository {
  EntityRepository();

  Future<List<Entity>> getLivingEntities();

  Future<List<Entity>> getEntities();

  Stream<List<Entity>> getEntitiesStream();

  Future<void> addEntity(Entity entity);

  Future<void> addEntityList(List<Entity> entities);

  Future<void> removeDyingEntities();
}
