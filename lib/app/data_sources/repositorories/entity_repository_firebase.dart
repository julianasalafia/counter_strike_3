
import 'package:counter_strike_3/app/domain/entities/entity.dart';

import '../../domain/repositories/entity_repository.dart';

class EntityRepositoryFirebase extends EntityRepository {
  @override
  Future<void> addEntity(Entity entity) {
    // TODO: implement addEntity
    throw UnimplementedError();
  }

  @override
  Future<void> addEntityList(List<Entity> entities) {
    // TODO: implement addEntityList
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getEntities() {
    // TODO: implement getEntities
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getLivingEntities() {
    // TODO: implement getLivingEntities
    throw UnimplementedError();
  }

  @override
  Future<void> removeDyingEntities() {
    // TODO: implement removeDyingEntities
    throw UnimplementedError();
  }
  
}
