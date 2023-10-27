import 'dart:io';

import 'package:counter_strike_3/models/entity.dart';
import 'package:counter_strike_3/repositories/entity_repository.dart';

class Player extends Entity {
  int liveTicks = 5;
  final EntityRepository repository;

  Player({required this.repository});

  @override
  void tick() {
    liveTicks -= 1;

    if (liveTicks <= 0) {
      isAlive = false;
    }

    final entities = repository.getLivingEntities();
    entities.remove(this);

    print('Escolha o alvo: ');

    for (var i = 0; i < entities.length; i++) {
      print('$i: ${entities[i].name}');
    }

    final playerResponse = int.parse(stdin.readLineSync()!);
    kill(entities[playerResponse]);
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
  // TODO: implement name
  String get name => 'Player';
}
