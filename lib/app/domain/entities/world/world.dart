import 'package:counter_strike_3/app/domain/entities/world/tile.dart';

abstract class World {
  final int id;
  final String name;
  final String description;
  final List<Tile> tiles;

  const World({
    required this.id,
    required this.name,
    required this.description,
    required this.tiles,
  });

  Map<String, dynamic> customJsonFields();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'tiles': tiles.map((e) => e.toJson()).toList(),
      ...customJsonFields(),
    };
  }
}
