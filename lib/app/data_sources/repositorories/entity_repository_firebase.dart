import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_strike_3/app/domain/entities/entity.dart';
import 'package:counter_strike_3/app/domain/entities/entity_enum.dart';

import '../../domain/models/enemy.dart';
import '../../domain/models/player.dart';
import '../../domain/repositories/entity_repository.dart';

class EntityRepositoryFirebase extends EntityRepository {
  final FirebaseFirestore firestore;

  EntityRepositoryFirebase({required this.firestore});

  @override
  Future<void> addEntity(Entity entity) async {
    await firestore.collection('entities').add(entity.toJson());
  }

  @override
  Future<void> addEntityList(List<Entity> entities) {
    // TODO: implement addEntityList
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getEntities() {
    // TODO: implement getEntities
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getLivingEntities() {
    // TODO: implement getLivingEntities
    throw UnimplementedError();
  }

  @override
  Future<void> removeDyingEntities() {
    // TODO: implement removeDyingEntities
    throw UnimplementedError();
  }

  @override
  Stream<List<Entity>> getEntitiesStream() {
    return firestore.collection('entities').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        ///TODO: Criar entity da resposta
        final typeId = doc.get('type');
        final type = EntityTypeEnum.values.firstWhere((element) => element.id == typeId);

        final json = doc.data();
        json['id'] = doc.id;

        switch (type) {
          case EntityTypeEnum.enemy:
            return Enemy.fromJson(json);
          case EntityTypeEnum.player:
            return Player.fromJson(json);
          default:
            throw Exception('Unknown entity type');
        }
      }).toList();
    });
  }
}
