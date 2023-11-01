import 'package:counter_strike_3/app/domain/entities/entity.dart';
import 'package:counter_strike_3/app/domain/entities/entity_enum.dart';

class Enemy extends Entity {
  final String _name;

  bool hasNamePrinted = false;

  Enemy({required super.id, required String name}) : _name = name;

  @override
  String get name => 'BOT $_name';

  @override
  EntityTypeEnum get entityType => EntityTypeEnum.enemy;

  @override
  void render() {
    if (!hasNamePrinted) {
      print(name);
      hasNamePrinted = true;
    }
  }

  @override
  void init() {
    // TODO: implement init
  }

  @override
  void tick() {
    // TODO: implement tick
  }

  @override
  void onDying() {
    // TODO: implement onDying
  }

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();


  factory Enemy.fromJson(Map<String, dynamic> json) {
    return Enemy(
      id: json['id'],
      name: json['name'],
      // isAlive: json['isAlive'] as bool,
    );
  }

  @override
  Map<String, dynamic> customJson() {
    return {
      'name': name,
      'isAlive': isAlive,
    };
  }
}
