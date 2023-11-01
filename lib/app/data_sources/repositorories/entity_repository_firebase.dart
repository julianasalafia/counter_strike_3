import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_strike_3/app/domain/entities/entity/entity.dart';
import 'package:counter_strike_3/app/domain/entities/entity/entity_enum.dart';

import '../../domain/exceptions/entity_parse_exception.dart';
import '../../domain/models/entities/enemy.dart';
import '../../domain/models/entities/player.dart';
import '../../domain/repositories/entity_repository.dart';



class EntityRepositoryFirebase extends EntityRepository {
  final FirebaseFirestore firestore;
  final String collectionPath = 'entities';

  EntityRepositoryFirebase({required this.firestore});

  Entity _convertDocumentSnapshotToEntity(DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    ///TODO: Criar entity da resposta
    final typeId = documentSnapshot.get('type');
    final type = EntityTypeEnum.values.firstWhere((element) => element.id == typeId);

    final json = documentSnapshot.data();

    if (json == null) {
      throw EntityParseException('DocumentSnapshot is null');
    }

    json['id'] = documentSnapshot.id;

    switch (type) {
      case EntityTypeEnum.enemy:
        return Enemy.fromJson(json);
      case EntityTypeEnum.player:
        return Player.fromJson(json);
      default:
        throw EntityParseException('Unknown entity type');
    }
  }

  @override
  Future<void> delete(String key) {
    return firestore.collection(collectionPath).doc(key).delete();
  }

  @override
  Future<void> deleteMany(List<String> keys) async {
    final WriteBatch batch = firestore.batch();

    for (final key in keys) {
      DocumentReference docRef = firestore.collection(collectionPath).doc(key);

      batch.delete(docRef);
    }

    await batch.commit();
  }

  @override
  Future<Entity?> get(String key) {
    return firestore.collection(collectionPath).doc(key).get().then((value) {
      return _convertDocumentSnapshotToEntity(value);
    });
  }

  @override
  Stream<List<Entity>> getAsStream() {
    return firestore.collection(collectionPath).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => _convertDocumentSnapshotToEntity(doc)).toList();
    });
  }

  @override
  Future<List<Entity>> getLivingEntities() async {
    final querySnapshot = await firestore.collection(collectionPath).where('isAlive', isEqualTo: true).get();

    final entities = querySnapshot.docs.map((doc) => _convertDocumentSnapshotToEntity(doc)).toList();

    return entities;
  }

  @override
  Future<List<Entity>> getMany() async {
    final querySnapshot = await firestore.collection(collectionPath).get();

    final entities = querySnapshot.docs.map((doc) => _convertDocumentSnapshotToEntity(doc)).toList();

    return entities;
  }

  @override
  Future<List<Entity>> getWhere(bool Function(Entity value) predicate) {
    // TODO: implement getWhere
    throw UnimplementedError();
  }

  @override
  Future<void> put(String key, Entity value) async {
    DocumentReference docRef;

    if (value.id.isEmpty) {
      docRef = firestore.collection(collectionPath).doc();
    } else {
      docRef = firestore.collection(collectionPath).doc(value.id);
    }

    await docRef.set(value.toJson());
  }

  @override
  Future<void> putMany(List<Entity> values) async {
    final WriteBatch batch = firestore.batch();

    for (final entity in values) {
      DocumentReference docRef;

      if (entity.id.isEmpty) {
        docRef = firestore.collection(collectionPath).doc();
      } else {
        docRef = firestore.collection(collectionPath).doc(entity.id);
      }

      batch.set(docRef, entity.toJson());
    }

    await batch.commit();
  }

  @override
  Future<void> removeDyingEntities() async {
    final querySnapshot = await firestore.collection(collectionPath).where('isAlive', isEqualTo: false).get();

    final WriteBatch batch = firestore.batch();

    for (final doc in querySnapshot.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();
  }
}
