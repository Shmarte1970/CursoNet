import 'dart:convert';

import 'package:http/http.dart' as http;

import 'joke_model.dart';
import 'repository/jokes.dart';

// CONVERT TO DATES UPDATE AND CREATE LIST

Future<void> main() async {
  //REQUEST CATEGORIES LIST

  getJokesAndOrderByDate(5);

  return;

  try{




    List<String> categories = await Jokes().getCategories();

    for(var category in categories) {
      Joke joke = await Jokes().getJoke(category);
      print("JOKE: ${joke.value}");

      await Future.delayed(Duration(seconds: 3));
    }

  }catch(e){

    print("Hey error de petición ${e}");
  }


  //print("after getting i: ${i}");
}

Future<void> getJokesAndOrderByDate(int numJokes) async {
  List<Joke> jokes = [];

  for(var i = 0 ; i < numJokes; i++){
    Joke joke = await Jokes().getJoke("food");
    jokes.add(joke);
  }

  // NOW I HAVE A LIST OF JOKES
  jokes.sort((joke1,joke2){ //-1,0,1
        return (joke1.createdAt?.compareTo(joke2.createdAt ?? DateTime.now())) ?? 0;
  });

  var mapToPrint = jokes.map((joke){
          return {
           // "jokeValue": joke.value,
            "date" : joke.createdAt
          };
  });

  print("JOKES ${mapToPrint}");

}

