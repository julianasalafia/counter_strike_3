import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_strike_3/app/domain/entities/entity/entity.dart';
import 'package:counter_strike_3/app/domain/entities/entity/entity_enum.dart';

import '../../domain/models/entities/enemy.dart';
import '../../domain/models/entities/player.dart';
import '../../domain/repositories/entity_repository.dart';

class EntityRepositoryFirebase extends EntityRepository {
  final FirebaseFirestore firestore;

  EntityRepositoryFirebase({required this.firestore});

  @override
  Future<void> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> deleteMany(List<String> keys) {
    // TODO: implement deleteMany
    throw UnimplementedError();
  }

  @override
  Future<Entity?> get(String key) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Stream<List<Entity>> getAsStream() {
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

  @override
  Future<List<Entity>> getLivingEntities() {
    // TODO: implement getLivingEntities
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getMany() {
    // TODO: implement getMany
    throw UnimplementedError();
  }

  @override
  Future<List<Entity>> getWhere(bool Function(Entity value) predicate) {
    // TODO: implement getWhere
    throw UnimplementedError();
  }

  @override
  Future<void> put(String key, Entity value) async {
    await firestore.collection('entities').add(value.toJson());
  }

  @override
  Future<void> putMany(List<Entity> values) {
    // TODO: implement putMany
    throw UnimplementedError();
  }

  @override
  Future<void> removeDyingEntities() {
    // TODO: implement removeDyingEntities
    throw UnimplementedError();
  }


}
