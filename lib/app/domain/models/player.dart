import '../entities/entity.dart';
import '../entities/entity_enum.dart';

class Player extends Entity {
  int liveTicks = 5;

  @override
  final String name;

  @override
  EntityTypeEnum get entityType => EntityTypeEnum.player;

  Player({
    required super.id,
    required this.name,
  });

  @override
  void tick() {
    liveTicks -= 1;

    if (liveTicks <= 0) {
      isAlive = false;
    }

    // final entities = repository.getLivingEntities();
    // entities.remove(this);
    //
    // print('Escolha o alvo: ');
    //
    // for (var i = 0; i < entities.length; i++) {
    //   print('$i: ${entities[i].name}');
    // }
    //
    // final playerResponse = int.parse(stdin.readLineSync()!);
    // kill(entities[playerResponse]);
  }

  @override
  void render() {
    print('vivo.');
  }

  void kill(Entity entity) {
    entity.isAlive = false;
  }

  @override
  void onDying() {
    // TODO: implement onDying
  }

  @override
  void init() {}

  @override
  toJson() {
    return {
      'id': id,
      'type': entityType.id,
      'name': name,
      'isAlive': isAlive,
      'liveTicks': liveTicks,
    };
  }

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      name: json['name'] as String,
      // isAlive: json['isAlive'] as bool,
    );
  }
}
