import 'dart:math';

class Dice {
  final int faces;

  const Dice({
    required this.faces,
  });

  int roll() {
    return Random().nextInt(faces) + 1;
  }
}
