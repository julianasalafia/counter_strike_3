
import 'app/controller/random_name_controller.dart';
import 'app/models/enemy.dart';
import 'app/models/player.dart';
import 'app/repositories/entity_repository.dart';


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
