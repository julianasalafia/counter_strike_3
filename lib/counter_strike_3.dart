import 'package:counter_strike_3/controller/random_name_controller.dart';
import 'package:counter_strike_3/models/enemy.dart';
import 'package:counter_strike_3/models/entity.dart';
import 'package:counter_strike_3/repositories/entity_repository.dart';

import 'models/player.dart';

bool isRunning = false;

void main() {
  isRunning = true;
  final entityRepository = EntityRepository();
  final player = Player(repository: entityRepository);
  final nameGenerator = RealNameGenerator();

  final bot1 = Enemy(name: nameGenerator.generateRandomName());
  final bot2 = Enemy(name: nameGenerator.generateRandomName());
  final bot3 = Enemy(name: nameGenerator.generateRandomName());
  final bot4 = Enemy(name: nameGenerator.generateRandomName());
  final bot5 = Enemy(name: nameGenerator.generateRandomName());

  entityRepository.addEntityList([
    player,
    bot1,
    bot2,
    bot3,
    bot4,
    bot5,
  ]);

  while (isRunning) {
    for (final item in entityRepository.getEntities()) {
      if (item.isAlive) {
        item.tick();
        item.render();
        continue;
      }
      item.onDying();
    }

    entityRepository.removeDyingEntities();

    if (player.isAlive == false) {
      return;
    }
  }
}
