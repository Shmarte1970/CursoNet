/*
{
  "categories": [
    "food"
  ],
  "origin":{
      "city":"Barcelona"
      "cp": "08016"

  },
  "created_at": "2020-01-05 13:42:19.576875",
  "icon_url": "https://assets.chucknorris.host/img/avatar/chuck-norris.png",
  "id": "ojw-faz_tbglq0q4sgwt8w",
  "updated_at": "2020-01-05 13:42:19.576875",
  "url": "https://api.chucknorris.io/jokes/ojw-faz_tbglq0q4sgwt8w",
  "value": "Chuck Norris doesn't churn butter. He roundhouse kicks the cows and the butter comes straight out."
}
 */

class Origin{
  String? city;
  String? cp;

  Origin({ this.city,this.cp});

  factory Origin.fromJson(json){
    return Origin(
        city: json["city"],
        cp: json["cp"]
      );
  }
}

class Joke{
  List<String>? categories;
  Origin? origin;
  DateTime? createdAt;
  String? iconUrl;
  String? id;
  DateTime? updatedAt;
  String? url;
  String? value;

  Joke({
      this.categories,
      this.origin,
      this.createdAt,
      this.iconUrl,
      this.id,
      this.updatedAt,
      this.url,
      this.value
  });

  factory Joke.fromJson(Map<String,dynamic> json){

    return Joke(
      categories : json["categories"] != null
                      ? List.from(json["categories"]) : null,
      origin: json['origin'] != null
                      ? Origin.fromJson(json['origin']) : null,
      createdAt: json['created_at'] != null
                    ? DateTime.parse(json["created_at"]) : null,
      iconUrl: json["icon_url"],
      id: json["id"],
      updatedAt: json['updated_at'] != null
                      ? DateTime.parse(json["updated_at"]) : null,
      url: json["url"],
      value: json["value"]

      //AQUI RELLENAREMOS EL JOKE DESDE EL JSON
    );
  }

}