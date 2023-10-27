import '../entities/entity.dart';

abstract class EntityRepository {
  EntityRepository();

  Future<List<Entity>> getLivingEntities();

  Future<void> addEntity(Entity entity);

  Future<void> addEntityList(List<Entity> entities);

  Future<List<Entity>> getEntities();

  Future<void> removeDyingEntities();
}
