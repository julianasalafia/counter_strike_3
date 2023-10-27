import 'entity.dart';

class Enemy extends Entity {
  final String _name;
  @override
  String get name => 'BOT $_name';

  bool hasNamePrinted = false;

  Enemy({required String name}) : _name = name;

  @override
  void render() {
    if (!hasNamePrinted) {
      print(name);
      hasNamePrinted = true;
    }
  }

  @override
  void tick() {
    // TODO: implement tick
  }

  @override
  void onDying() {
    // TODO: implement onDying
  }
}
