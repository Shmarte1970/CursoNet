// Numeros Primos
//

void main() {
  List<int> numbers = [83, 61, 47, 13, 14, 25, 10, 7, 7, 15, 6, 7, 8, 10, 61];
  List<int> repnum = [];
  List<int> primnumbers = [];

// primero vamos a crear una lista con los numeros sin repetir
  for (var number in numbers) {
    if (!repnum.contains(number) &&
        number > 0) { // Que no exista en la lista lo añada
      repnum.add(number);
    }
  }
  print('$numbers'); // Todos los valores
  print('$repnum'); // Los valores sin repeticion

  // Ordenar la lista

  repnum.sort();

  print('$repnum');

  for (var candidateNumber in repnum) {
    if (isPrime(candidateNumber)) {
      primnumbers.add(candidateNumber);
    }
  }
}


bool isPrime(int number)
{
  var maxFactor = number ~/2;     // el simbolo ~ trunca la división y devuelve numero entero
  // int maxFactor = number / 2; esto no se puede hacer porque da decimales
  bool divderFound = false;
  for (var i = 2;i <= maxFactor; i++)
  {
    if (number % i ==0)
    {
      divderFound = true;
      break;
    }
  }

  if(divderFound)
  {
    return false;
  }else
    {
      return true;
    }

}


