void main() {
  var bucle = true;
  var i = 1;
  while (i <= 6) {
    print("Imprimiendo con variable en el while $i");
    i++;
  }
  i = 1;
  print("\n");
  while (bucle) {
    if (i <= 6) {
      print("Imprimiendo con boleano en while contador if $i");
      i++;
    } else {
      bucle = false;
    }
  }
  print("\n");
  i = 1;
  do {
    print("DO antes de entrar en el While $i");
    i++;
  } while (i <= 5);
  print("Despues del Do dentro del While $i");
}
