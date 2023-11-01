import 'package:counter_strike_3/app/domain/entities/entity/entity_enum.dart';

abstract class Entity {
  final String id;

  EntityTypeEnum get entityType;

  bool isAlive = true;

  Entity({
    required this.id,
  });

  String get name;

  void init();

  void tick();

  void render();

  void onDying();

  Map<String, dynamic> customJsonFields();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': entityType.id,
      ...customJsonFields(),
    };
  }
}
