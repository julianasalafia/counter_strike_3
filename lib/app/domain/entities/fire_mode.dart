abstract class FireMode {
  final int shotsPerTurn;
  final int accuracyModifier;
  final int damageModifier;

  const FireMode({
    required this.shotsPerTurn,
    required this.accuracyModifier,
    required this.damageModifier,
  });

  int calculateDamage();
}

class Single extends FireMode {
  const Single({
    required int shotsPerTurn,
    required int accuracyModifier,
    required int damageModifier,
  }) : super(
          shotsPerTurn: shotsPerTurn,
          accuracyModifier: accuracyModifier,
          damageModifier: damageModifier,
        );

  @override
  int calculateDamage() {
    // Implementation specific to 'Single' fire mode
    return 0;
  }
}

class Auto extends FireMode {
  const Auto({
    required int shotsPerTurn,
    required int accuracyModifier,
    required int damageModifier,
  }) : super(
          shotsPerTurn: shotsPerTurn,
          accuracyModifier: accuracyModifier,
          damageModifier: damageModifier,
        );

  @override
  int calculateDamage() {
    // Implementation specific to 'Auto' fire mode
    return 0;
  }
}

class Burst extends FireMode {
  const Burst({
    required int shotsPerTurn,
    required int accuracyModifier,
    required int damageModifier,
  }) : super(
          shotsPerTurn: shotsPerTurn,
          accuracyModifier: accuracyModifier,
          damageModifier: damageModifier,
        );

  @override
  int calculateDamage() {
    // Implementation specific to 'Burst' fire mode
    return 0;
  }
}
