

import 'plane.dart';
import 'superman.dart';
import 'aquaman.dart';
import 'batman.dart';
import 'car.dart';
import 'character.dart';
import 'mixins.dart';

void main(){

  Superman superman = Superman(name:"Clark Ken");
  Aquaman aquaman = Aquaman(name:"Arthur");
  Batman batman = Batman(name: "Bruce Wayne");

  List<Character> heros = [superman,batman,aquaman];

  List<Character> canFlyHeros = [];


  for(var hero in heros){
      print("${hero.runtimeType} : ${getProperties(hero)}");
      // I'm batman and i can fly & run and my name is <name>

  }

  Car car1 = new Car(name: "SuperCar");
  Batman bman = new Batman(name: "the other");
  Plane plane = new Plane(name: "Air Force One");

  car1.startRunning();
  plane.startRunning();
  bman.startRunning();

  print("CAN FLY HEROS IS ${canFlyHeros}");








}


String getProperties(Character c){
  //RETURNS IF CHARACTER CAN FLY CAN SWIM OR CAN RUN
  var properties = "";

  if(c is Run){
    properties += "run";
  }

  if(c is Fly){
    properties += ", fly";
  }

  if(c is Swim){
    properties += ", swim";
  }

  return "I can $properties";
}