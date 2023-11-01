import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_strike_3/app/data_sources/repositorories/authentication/session_firebase_repository.dart';
import 'package:counter_strike_3/app/data_sources/repositorories/authentication/sign_in_anonymously_firebase_repository.dart';
import 'package:counter_strike_3/app/domain/repositories/authentication/session_repository.dart';
import 'package:counter_strike_3/app/domain/repositories/authentication/sign_in_anonymously_repository.dart';
import 'package:counter_strike_3/app/domain/repositories/authentication/sign_in_repository.dart';
import 'package:counter_strike_3/app/domain/repositories/entity_repository.dart';
import 'package:counter_strike_3/app/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../data_sources/repositorories/entity_repository_firebase.dart';

final getIt = GetIt.instance;

void getItSetup() {
  final firestore = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  final getIt = GetIt.instance;

  getIt.registerSingleton<EntityRepository>(EntityRepositoryFirebase(firestore: firestore));
  getIt.registerSingleton<SessionRepository>(SessionFirebaseRepository(firebaseAuth: firebaseAuth));
  getIt.registerSingleton<SignInAnonymouslyRepository>(SignInAnonymouslyFirebaseRepository(firebaseAuth: firebaseAuth));
}
