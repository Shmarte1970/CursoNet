

import 'character.dart';
import 'mixins.dart';

class Aquaman extends Character with Swim,Run {


  Aquaman({required String name,
              double health = 100,
              double power = 1,
              int coins = 0 }
      ):super(name:name,health: health,power: power,coins: coins);

  @override
  void describe() {

    print("I'm Aquaman I can swim and run and my name is $name");
    // TODO: implement describe
  }


}


