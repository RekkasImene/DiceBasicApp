import 'dart:math';
class DiceRepository {
  static const NOT_ROLLED = -1;
  final _generator = Random ();
  int roll (int facesNumber) {
    return _generator . nextInt (facesNumber) + 1;
  }
}