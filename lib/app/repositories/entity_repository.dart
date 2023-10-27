
import '../models/entity.dart';

class EntityRepository {
  List<Entity> _list = [];

  List<Entity> getLivingEntities() {
    return _list.where((element) => element.isAlive).toList();
  }

  EntityRepository();

  addEntity(Entity entity) {
    _list.add(entity);
  }

  addEntityList(List<Entity> entities) {
    _list.addAll(entities);
  }

  List<Entity> getEntities() {
    return _list;
  }

  removeDyingEntities() {
    _list.removeWhere((element) => element.isAlive == false);
  }
}
