
import 'app/utils/random_name_controller.dart';
import 'app/domain/models/enemy.dart';
import 'app/domain/models/player.dart';
import 'app/data_sources/repositorories/entity_repository_mock.dart';


bool isRunning = false;

void main() {
  // isRunning = true;
  // final entityRepository = EntityRepositoryMock();
  // final nameGenerator = RealNameGenerator();
  //
  // final player = Player(repository: entityRepository, id: 0);
  // final bot1 = Enemy(name: nameGenerator.generateRandomName(), id: 0);
  // final bot2 = Enemy(name: nameGenerator.generateRandomName(), id: 0);
  // final bot3 = Enemy(name: nameGenerator.generateRandomName(), id: 0);
  // final bot4 = Enemy(name: nameGenerator.generateRandomName(), id: 0);
  // final bot5 = Enemy(name: nameGenerator.generateRandomName(), id: 0);
  //
  // entityRepository.addEntityList([
  //   player,
  //   bot1,
  //   bot2,
  //   bot3,
  //   bot4,
  //   bot5,
  // ]);

  // while (isRunning) {
  //   for (final item in entityRepository.getEntities()) {
  //     if (item.isAlive) {
  //       item.tick();
  //       item.render();
  //       continue;
  //     }
  //     item.onDying();
  //   }
  //
  //   entityRepository.removeDyingEntities();
  //
  //   if (player.isAlive == false) {
  //     return;
  //   }
  // }
}
