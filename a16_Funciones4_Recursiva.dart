num factorial(num n) {
  var valor;
  if (n == 1) {
    return 1;
  } else {
    valor = n * factorial(n - 1);    
    return valor;
  }
}

void main() {
  print("El factorial es "+factorial(7).toString());
}
