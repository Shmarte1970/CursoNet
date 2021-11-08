/*
{
  "categories": [
    "food"
  ],
  "created_at": "2020-01-05 13:42:19.576875",
  "icon_url": "https://assets.chucknorris.host/img/avatar/chuck-norris.png",
  "id": "ojw-faz_tbglq0q4sgwt8w",
  "updated_at": "2020-01-05 13:42:19.576875",
  "url": "https://api.chucknorris.io/jokes/ojw-faz_tbglq0q4sgwt8w",
  "value": "Chuck Norris doesn't churn butter. He roundhouse kicks the cows and the butter comes straight out."
}
 */

class Joke{

  List<String>? categories;
  String? createdAt;
  String? iconUrl;
  String? id;
  String? updatedAt;
  String? url;
  String? value;

  Joke({
      this.categories,
      this.createdAt,
      this.iconUrl,
      this.id,
      this.updatedAt,
      this.url,
      this.value
  }){
    print("Im constructing a joke");

  }

  /*factory Joke.fromJson(Map<String,dynamic> json)*/
  factory Joke.fromJson(Map json){


    return Joke(
      categories : List.from(json["categories"]),
      createdAt: json["created_at"],
      //AQUI RELLENAREMOS EL JOKE DESDE EL JSON
    );
  }

}
/*
void main(){
  Map lostInCombat ={'categories': '', 'createdAt':'', };
  Joke joker = Joke.fromJson(lostInCombat);

  print(joker.categories);
  print(joker.createdAt);

}*/