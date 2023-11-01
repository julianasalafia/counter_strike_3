import 'package:counter_strike_3/app/domain/repositories/repository.dart';

import '../entities/entity/entity.dart';
import '../entities/world/tile.dart';

abstract class TileRepository implements Repository<Tile> {
  Future<List<Entity>> getEntitiesAt(Tile tile);

  Future<void> putEntityAt(Tile tile, Entity entity);

  Future<void> deleteEntityAt(Tile tile, Entity entity);
}
