import 'dice.dart';
import 'hit.dart';
import 'modifier.dart';

class Accuracy {
  final Dice dice;

  const Accuracy({
    required this.dice,
  });

  Hit roll(List<Modifier> appliedModifiers, Modifier inputModifier) {
    int diceResult = dice.roll();
    if (diceResult <= 1) {
      return Hit.criticalError;
    } else if (diceResult == 2) {
      return Hit.error;
    } else if (diceResult >= dice.faces) {
      return Hit.criticalHit;
    } else {
      return Hit.hit;
    }
  }
}
