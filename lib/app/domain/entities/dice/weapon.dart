import 'accuracy.dart';
import 'dice.dart';
import 'fire_mode.dart';
import 'initiative.dart';
import 'magazine.dart';
import 'modifier.dart';

class Weapon {
  Dice diceDamage;
  Accuracy accuracy;
  List<Modifier> modifiers;
  Initiative initiative;
  Magazine magazine;
  List<FireMode> fireModes;
  FireMode selectedFireMode;

  Weapon({
    required this.diceDamage,
    required this.accuracy,
    required this.modifiers,
    required this.initiative,
    required this.magazine,
    required this.fireModes,
    required this.selectedFireMode,
  });
}
