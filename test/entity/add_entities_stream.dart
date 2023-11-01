import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_strike_3/app/data_sources/repositorories/entity_repository_firebase.dart';
import 'package:counter_strike_3/app/domain/models/entities/player.dart';
import 'package:counter_strike_3/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() async {
  testWidgets('Firebase test', (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.web,
    );

    final firestore = FirebaseFirestore.instance;

    final entityRepository = EntityRepositoryFirebase(firestore: firestore);

    final player = Player(id: '', name: 'Test Player');

    await entityRepository.addEntity(player);

    print('Added player');
  });
}
