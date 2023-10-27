import 'package:counter_strike_3/app/domain/entities/entity.dart';

class Enemy extends Entity {
  final String _name;

  @override
  String get name => 'BOT $_name';

  bool hasNamePrinted = false;

  Enemy({required super.id, required String name}) : _name = name;

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
  int get id => throw UnimplementedError();

  @override
  toJson() {
    return {
      'id': id,
      'name': name,
      'isAlive': isAlive,
    };
  }

  factory Enemy.fromJson(Map<String, dynamic> json) {
    return Enemy(
      id: json['id'] as int,
      name: json['name'] as String,
      // isAlive: json['isAlive'] as bool,
    );
  }
}
