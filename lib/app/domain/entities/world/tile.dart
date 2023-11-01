import '../entity/entity.dart';

abstract class Tile {
  final int id;
  final String name;
  final String description;
  final List<Entity> entities;

  Tile({
    required this.id,
    required this.name,
    required this.description,
    required this.entities,
  });

  Map<String, dynamic> customJsonFields();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'entities': entities.map((e) => e.toJson()).toList(),
      ...customJsonFields(),
    };
  }
}
