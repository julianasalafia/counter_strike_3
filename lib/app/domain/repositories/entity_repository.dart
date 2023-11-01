import 'package:counter_strike_3/app/domain/repositories/repository.dart';

import '../entities/entity/entity.dart';

abstract class EntityRepository<T extends Entity> implements Repository<T> {
  Future<List<T>> getLivingEntities();
  Future<void> removeDyingEntities();
  Stream<List<T>> getAsStream();
}
