import 'dart:math';
//LISTA DE MARCAS DE COCHES ( SWITCH CASE )
// Bmw, Audi, Seat, Mercedes, Volvo

// Si quiero un volvo soy un vanidoso
// Si quiero un seat soy humilde
// Si quiero un bmw soy rico
// Si quiero un audi soy menos rico.
// whoIAm("Audi"); //Salida será "eres menos rico"


List<String> brands = ["audi","mercedes","seat","volvo"];

void main(){

  //print("I've got a ${getRandomBrand()}");
  manipulateList();


}

String getRandomBrand(){

  Random r = Random();
  var randomIndex = r.nextInt(4);
  return brands[randomIndex];

}

void whoIAm(String carbrand){



  var brandLowed = carbrand.toLowerCase();

  switch(brandLowed) {
    case "audi":
      print("Eres menos rico");
      break;
    case "seat":
      print("eres humilde");
      break;
    case "volvo":
      print("eres un vanidoso");
      break;
    default:
      print("No conozco la marca de tu coche");
  }


//LA ALTERNATIVA SERIA HACERLO CON IF ELSE PERO ES MENOS
//RECOMENDABLE
/*
  if(brandLowed == "audi") {
    print("Eres menos rico");
  }else if(brandLowed == "bmw"){
    print("Eres rico");
  }else if(brandLowed == "seat"){
    print("Eres humilde");
  }else if(brandLowed == "volvo"){
    print("eres un vanidoso");
  }else{
    print("No conozco la marca de tu coche");
  }
  /**/

 */
}
//QUIERO SABER SI MI LISTA CONTIENE LA PALABRA MERCEDES
//INDEPENDIENTEMENTE DE COMO ESTA ESCRITA EN LA LISTA
void manipulateList(){

  List<String> carBrands = ["audi","MeRcedEs","seat","volvo"];


  //pasamos a lowercase toda la lista
  //["audi","mercedes","seat","volvo"]
  var listMapped = carBrands.map(
      (element){
              return element.toLowerCase();
      }
  );

  //AHORA YA PODEMOS BUSCAR EN LA LISTA MAPEADA,
  //PQ SEGURO ESTA EN MINUSCULAS Y LO ENCUENTRA
  listMapped.contains("mercedes"); // -->Devolverá true;


  print("mapped List ${listMapped}");

  listMapped.contains("mercedes");
  //FILTRAMOS LOS ELEMENTOS, LA MEDIDA DE LOS CUALES ES MAYOR IGUAL A 5 LETRAS
  var listFiltered = carBrands.where(
      (element){
        return element.length >= 5;
        //return element.toLowerCase().contains("e");
      }
  );

  print("LIST FILTERED IS: $listFiltered");

  //brands.forEach((element) {print("$element");});

}


