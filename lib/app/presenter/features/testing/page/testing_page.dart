import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

import '../state/testing_state.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends TestingState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(
                child: Form(
                  key: entityFormKey,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text('Add Entity'),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: entityNameController,
                        validator: Validatorless.required('Entity is required'),
                        decoration: const InputDecoration(
                          labelText: 'Entity',
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: addEntity,
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: StreamBuilder(
                  stream: entityRepository.getAsStream(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return  Text('Error ${snapshot.error}');
                    }

                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    final entities = snapshot.data ?? [];

                    final entitiesCount = entities.length;


                    return Column(
                      children: [
                        Text('Entities: $entitiesCount'),
                        const SizedBox(height: 16),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: entities.length,
                          itemBuilder: (context, index) {
                            final entity = entities[index];
                            return ListTile(
                              title: Text(entity.name),
                              subtitle: Text(entity.id),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
