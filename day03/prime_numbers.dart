
var globalVar = 3;

const RATIO_LB_KG = 0.45;

void main(){
  List<int> numbers = [0,1,83,61,47,13,14,25,10,7,7,15,6,7,8,10,61];
  printPrimeNumbers(numbers);
}

printPrimeNumbers(List<int> numbers){
  // PRINTAR LOS NÚMEROS PRIMOS DE LA LISTA
  // ORDENADOS DE MENOR A MAYOR
  // SI LOS NUMEROS ESTAN REPETIDOS NO SE DEBEN PRINTAR

  List<int> uniqueOrderedList = [];

  for(var number in numbers){
    if(uniqueOrderedList.contains(number) == false && number > 0){
      uniqueOrderedList.add(number);

    }
  }
  print("UNIQUE LIST (NOT ORDERED) $uniqueOrderedList");
  // YA TENGO LA LISTA CON VALORES UNICOS
  uniqueOrderedList.sort();

  List<int> primeNumbers = [];

  for(var candidateNumber in uniqueOrderedList){
    if(isPrime(candidateNumber)){
      primeNumbers.add(candidateNumber);
    }
  }


  print("PRIME LIST (ORDERED) $primeNumbers");

  printListInText(primeNumbers);

  //YA TENGO LA LISTA ORDENADA







  //En el ejemplo 1,7,13,47,61,83
}

bool isPrime(int number){
  //QUE SEA SOLO DIVISIBLE POR 1 y POR EL MISMO Y NATURAL > 1
  //12
  int maxFactor = number ~/2;
 // int maxFactor2 = (number / 2).floor();
  bool dividerFound = false;
  for(var i = 2; i <= maxFactor;i++){
    if(number % i == 0){
      return false;
      //dividerFound = true;
      //break;
    }
  }

  return true;

  if(dividerFound == true){
    return false;
  }else{
    return true;
  }

}

//RECEIVESD A "23"
String translated(String number){
  List<String> convertedNums = [];

  for(var i = 0; i < number.length;i++){
    switch(number[i]){
      case '1':
       convertedNums.add("uno");
        break;
      case '2':
        convertedNums.add("dos");
        break;
      case '3':
        convertedNums.add("tres");
        break;
      case '4':
        convertedNums.add("cuatro");
        break;
      case '5':
        convertedNums.add("cinco");
        break;
      case '6':
        convertedNums.add("seis");
        break;
      case '7':
        convertedNums.add("siete");
        break;
      case '8':
        convertedNums.add("ocho");
        break;
      case '9':
        convertedNums.add("nueve");
        break;
      case '0':
        convertedNums.add("cero");
        break;

      default:
        return "unknown";
    }
  }

  return convertedNums.join("-");


}

printListInText(List<int> numbers){
  //RECORREMOS LA LISTA DE ENTRADA PARA IR PRINTANDO
  //LOS NÚMEROS SEGÚN SE SOLICITA.
  for(int number in numbers){
    //LA FUNCIONA TRANSATED CONVIERTE UN NUMERO A TEXTO
    print(translated(number.toString()));
  }

  //SAMPLE ocho-tres , seis-uno, cuatro-siete
}