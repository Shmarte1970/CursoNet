import 'properties.dart';
import 'character.dart';
import 'mixins.dart';

class Superman extends Character with Run,Fly,Swim {

  Superman({required String name,
              double health = 100,
              double power = 1,
              int coins = 0 }
      ):super(name:name,health: health,power: power,coins: coins);

  @override
  void describe() {
    print("I'm Superman I can swim, run and fly and my name is $name");

  }


}


