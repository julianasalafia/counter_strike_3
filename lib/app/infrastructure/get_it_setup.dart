import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_strike_3/app/domain/repositories/entity_repository.dart';
import 'package:get_it/get_it.dart';

import '../data_sources/repositorories/entity_repository_firebase.dart';

final getIt = GetIt.instance;

void getItSetup() {
  final firestore = FirebaseFirestore.instance;

  getIt.registerSingleton<EntityRepository>(EntityRepositoryFirebase(firestore: firestore));
}
