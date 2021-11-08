
import 'character.dart';
import 'mixins.dart';

class Batman extends Character with Run  {

  Batman({required String name,
              double health = 100,
              double power = 1,
              int coins = 0 }
      ):super(name:name,health: health,power: power,coins: coins);

  @override
  void describe() {
    // TODO: implement describe
    print("I'm Batman I can  run and my name is $name");

  }



}


