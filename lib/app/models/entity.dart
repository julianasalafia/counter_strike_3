abstract class Entity {
  bool isAlive = true;
  String get name;

  void tick();
  void render();
  void onDying();
}
