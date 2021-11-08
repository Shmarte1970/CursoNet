import 'package:http/http.dart' as http;


//"https://api.chucknorris.io/jokes/random?category=food"

Future<void> main()  async {
  Uri url = Uri.parse("https://api.chucknorris.io/jokes/random?category=food");


  print("START");

  //METHOD AWAIT
  try{
    http.Response response = await http.get(url);
    print("This is my value ${response.body}");
  }catch(e){
    print("There was an error on the query $e");
  }finally{
    print("FINALLY");
  }

  //METHOD THEN
  var screenLoading = true;

  http.get(url).then((value){
    print("value is $value");
  }).catchError((e){
    print("there was an error");
  }).whenComplete((){
    screenLoading = false;
  } );


 // waitData().then((value) => print("This is my value"));

  /*http.get(url).then((http.Response response)=>{
        print("I'm painting screen with the Joke")
  });*/

  print("END");

}

Future<int> waitData() async {
  await Future.delayed(Duration(seconds:3));
  return 0;

}