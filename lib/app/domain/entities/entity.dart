abstract class Entity {
  final int id;
  bool isAlive = true;

  Entity({required this.id});

  String get name;

  void init();

  void tick();

  void render();

  void onDying();

  toJson();
}
