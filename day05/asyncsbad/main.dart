
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'joke_model.dart';

Future<void> main() async {

  /*print("before getting i");

  getInt().then((value) => print("I've finished future $value"));

  print("I've finished main");
  //print("after getting i: ${i}");*/

  Future<void> main() async {
    Uri uri = Uri.parse(
        "https://api.chucknorris.io/jokes/random?category=food");

    try {
      http.Response response = await http.get(uri);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        /*****/
        var jsonDecodeResult = jsonDecode(response.body);

        Joke joke = Joke.fromJson(jsonDecodeResult);
        /******/
        print("THE JOKE ${joke.value}");
        // print("JOKE ORIGIN ${joke.origin}");

      }
    } catch (e) {
      print("Hey error de petición ${e}");
    }


    //print("after getting i: ${i}");

}

/*Future<int> getInt() async{

  await Future.delayed(Duration(seconds:4));
  print("retuning i");
  return 0;
}*/