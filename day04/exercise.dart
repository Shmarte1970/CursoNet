




// EXERCISE 6:

//types can be batman, superman or aquaman
//names: [Arthur, Robert, James, John]
//surnames: [ Miller, Redford, Cameron, Cusack]
//power: 1- 100
//health: 0
//coins:0
//name:

//    {
//       "name":"jordi",
//       "surname":"massana"
//    }

import 'dart:math';

import 'heros/aquaman.dart';
import 'heros/batman.dart';
import 'heros/character.dart';
import 'heros/mixins.dart';
import 'heros/superman.dart';

void main(){

  var herosList = initHeros(10);

  exercise05(herosList);

}

String getName(){
  Random random = Random();

  List<String> names= ["Arthur", "Robert", "James", "John"];
  List<String> surnames = ["Miller","Redford","Cameron","Cusack","Fonda"];
  //surnames: [ Miller, Redford, Cameron, Cusack]
  var indexName = random.nextInt(names.length);
  var indexSurname = random.nextInt(surnames.length);

  return names[indexName] + " " + surnames[indexSurname];


}

// EXERCISE 0 INITIALISE RANDOMLY AN ARRAY OF 100 Characters with random
List<Character> initHeros(int maxHeros){
  //types can be batman, superman or aquaman
  //names: [Arthur, Robert, James, John]
  //surnames: [ Miller, Redford, Cameron, Cusack]
  //power: 1- 100
  //health: 0
  //coins:0
  List<Character> heros = [];
  var rand = Random();

  for(var i = 0; i < maxHeros; i++){
    int type = rand.nextInt(3);
    int power = rand.nextInt(100)+1;
    // 0 batman 1 superman 2 aquaman
    switch(type){
      case 0:
        heros.add(Batman(name:getName(),power:power.toDouble()));
        break;
      case 1:
        heros.add(Superman(name:getName(),power:power.toDouble()));
        break;
      case 2:
        heros.add(Aquaman(name:getName(),power:power.toDouble()));
        break;
      default:
        print("Unknown superhero");
    }
    //heros.add(Batman) o heros.add(Aquaman) o heros.add(Superman)
  }

  var i = 0;
  heros.forEach((hero) {
    //print("${i} My name is ${hero.name} and i'm a ${hero.runtimeType} "
    //    "and my power is ${hero.power}");
    i++;
  });

  return heros;

}

// EXERCISE 1: get an array of the most powerful ones power > 30
void exercise01(List<Character> heros){

  List<Character> filteredList =
        heros.where((hero) => hero.power > 30).toList();

  print("There are ${filteredList.length} heros with more than 30 power");
}


// EXERCISE 2: count how many characters has the same name
/*
  {"John Miller": 2,
   "Robert Redford: 4,
   ......
 */

void exercise02(List<Character> heros) {
  // LIST heros

  Map<String,int> namesMap = {};

  heros.forEach((hero) {
    //QUIERO VER QUE NOMBRE TIENE HERO Y SUMAR 1 A LA KEY CORRECTA
    namesMap[hero.name] = (namesMap[hero.name] ?? 0)  + 1;

  });

  print("Exercise 02 result $namesMap");

}

// EXERCISE 3: create array with unique name elements ( name is same)

void exercise03alt(List<Character> heros){

  Set<String> uniqueNames = {};

  heros.forEach((element) {
    uniqueNames.add(element.name);
  });

  List<String> orderedList = uniqueNames.toList();
  orderedList.sort((a,b)=> a.compareTo(b));

  print("UNIQUE NAMES length: ${uniqueNames.length} "
      "${orderedList}");


}

// EXERCISE 3: create array with unique name elements ( name is same)
void exercise03(List<Character> heros) {
  // LIST heros
  List<Character> uniqueNameList = [];

  for(var item in heros){
    bool found = false;
    for(var item2 in uniqueNameList){
      if(item.name == item2.name){
        found = true;
      }
    }

    if(!found){
      uniqueNameList.add(item);
    }
  }
  var i = 0;

  uniqueNameList.sort(
          (a,b)=> a.name.compareTo(b.name)
  );

  for(var hero in uniqueNameList.reversed){
    print("${i++} UNIQUE NAME: ${hero.name}");
  }




}

// EXERCISE 4: create a map (Map<String,List<String>>) where key is the surname with a list
//             of characters name who have that surname
//              { 'Miller':['Arthur Miller', 'Robert Miller','John Miller'...],
//                'Redford':['Robert Redford','Arthur Redford'.....]}

void exercise04(List<Character> heros){

  Map<String,List<String>> mapSurnames = {};

  heros.forEach((element) {

    var surname = element.name.split(" ").last;

    if(!mapSurnames.containsKey(surname)){
      mapSurnames[surname] = [element.name];
    }else{
      mapSurnames[surname]?.add(element.name);
    }

  });

  print("MAP SURNAMES: ${mapSurnames}");
}

// EXERCISE 5: create a map where key is the property (fly,run,swim) with a list
//             of characters with those properties
//              { 'Fly':['Arthur Miller', 'Robert Miller','John Miller'...],
//                'Swim':['Robert Redford','Arthur Redford'.....],
//                'Run':['Arthur Redford','John Cameron']}
void exercise05(List<Character> heros){
      Map<String,List<Character>> canDoMap = {
        "Fly":[],
        "Swim":[],
        "Run":[]
      };

      heros.forEach((hero) {

        if(hero is Fly){
          canDoMap["Fly"]?.add(hero);
        }
        if(hero is Run){
          canDoMap["Run"]?.add(hero);
        }
        if(hero is Swim){
          canDoMap["Swim"]?.add(hero);
        }

      });

     // print("${canDoMap}");

      canDoMap.forEach((key, value) {
        print("------------------------------------");
        print("Key is ${key}");

        List<Character> myList = value;

        List<String> names =
            myList.map((element) => element.name).toList();


        print("MY LIST: $names");

      });


}

