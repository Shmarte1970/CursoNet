

import 'info.dart';

abstract class Character implements Info{
  String name;
  double health;
  double power;
  int coins;

  Character({
    required this.name,
    this.health = 100,
    this.power = 1.0,
    this.coins = 0
  });




}