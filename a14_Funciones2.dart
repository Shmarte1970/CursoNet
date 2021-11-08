

void main() {
   saludos("Pedro", null, 32);

}


void saludos(String nombre, [String? apellido, num? edad]) {
  if (apellido != null && edad != null) {
    print("Bienvenido $nombre $apellido, edad $edad");
  } else {
    print("Bienvenido $nombre");
  }
}

