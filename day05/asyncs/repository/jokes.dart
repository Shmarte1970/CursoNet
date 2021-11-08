
import 'dart:convert';

import '../joke_model.dart';
import 'package:http/http.dart' as http;

class Jokes{

  Future<List<String>> getCategories() async {

    Uri uriCategories = Uri.parse("https://api.chucknorris.io/jokes/categories");

    try{
      http.Response response = await http.get(uriCategories);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        List<String> categories = List.from(
            jsonDecode(response.body));

        return categories;

      }else{
        throw Exception("Error requesting categories");
      }
    }catch(e){
      print("There was an error $e");
      throw e;
    }
    // List<String> categories = List.from(decoded);

  }

  Future<Joke> getJoke(String category) async {

    Uri uriJokes = Uri.parse(
        "https://api.chucknorris.io/jokes/random?category=${category}");

    try {
      http.Response response = await http.get(uriJokes);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        /*****/
        var jsonDecodeResult = jsonDecode(response.body);

        Joke joke = Joke.fromJson(jsonDecodeResult);
        /******/

        return joke;
      } else { // HERE THERE HAS BEEN A PROBLEM WITH REQUEST
        throw Exception("There was an error with joke request");
      }
    } catch (e) {
      throw e;
    }
  }

}