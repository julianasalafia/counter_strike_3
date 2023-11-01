import 'package:counter_strike_3/app/domain/models/entities/player.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../domain/repositories/entity_repository.dart';
import '../page/testing_page.dart';

abstract class TestingState extends State<TestingPage> {
  late final EntityRepository entityRepository;

  final entityNameController = TextEditingController();
  final entityFormKey = GlobalKey<FormState>();

  @override
  initState() {
    super.initState();
    entityRepository = GetIt.I.get<EntityRepository>();
  }

  Future<void> addEntity() async {
    final formValidated = entityFormKey.currentState!.validate() ?? false;

    if (!formValidated) {
      return;
    }

    final entityName = entityNameController.text;

    final player = Player(name: entityName, id: '0');

    entityRepository.put(player.id, player);
    entityNameController.clear();
  }

  @override
  void dispose() {
    entityNameController.dispose();
    super.dispose();
  }
}
