import 'dart:io';



//
//
// Conversor de grados
void main() {
// celsiTofarh(10);

// farhtocelsi(5);

//print('Los grados en Celsius son '+celsiTofarh(10).toString());


/*
stdout.write('Introduce los grados:');
String input;

input = stdin.readLineSync() as String;
var valor = double.parse(input);


print('Los grados en Celsius son '+celsiTofarh(valor).toString());
*/

  String selected; // Selected recogera la opcion que deseemos
  bool looping = true;
  String input;


  while (looping) {
    print('Seleccion');
    print('----------');
    print('Pulsa 1 para convertir de Celsius a Farenheit ');
    print('Pulsa 2 para convertir de Farenheit a Celsius');
    print('Pulsa 0 para terminar');

    selected = stdin.readLineSync() as String;

    if (selected == "1") {
      print('Introduce los grados que quieres convertir a farenheit');
      input = stdin.readLineSync() as String;
      //var valor = double.parse(input); // tira llamando a la  funcion
      var valor = question(input);
       //print('Los grados $input en farenheit son ${celsiTofarh(valor).toStringAsFixed(2)} farenheit'); // tira llamando a la funcion
        print('Los grados $input en farenheit son ${question(celsiTofarh(valor)).toStringAsFixed(2)} farenheit');
    }
    if (selected == '2') {
      print('Introduce los farenheit que quieres convertir a grados');
      input = stdin.readLineSync() as String;
      var valor = double.parse(input);
      print('Los farenheit $input en grados son ${farhtocelsi(valor).toStringAsFixed(2)} Celsius');
    }
    if (selected == "0") {
      print('Adios');
      looping = false;
    }
  }

}

question(String quest)
{
  String input2;
  input2 = stdin.readLineSync() as String;
  var valor = double.parse(input2);
  return valor;
}

celsiTofarh(double grados){

  late double result;
  result = (grados * 9/5)+32;
  return result;

}

farhtocelsi(double farh)
{

  late double result;
  result = ((farh-32) * 5/9);
  return result;

}



/*  Esto funciona sin retornar nada
void celsiTofarh(double grados)
{
  late double result;

  result = (grados * 9/5)+32;

  print('Los grados en Celsius son $result');
}



*/
