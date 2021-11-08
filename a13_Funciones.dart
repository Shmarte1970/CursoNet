void main() {
  saludos("Pedro");
  saludos2("Angeles");
  saludos3("Soler");
  String msg = saludos4("Marc");
  print(msg);
}

// Simple
void saludos(nombre) {
  // se puede escribir sin el void
  print("Hola $nombre");
}

// Definiendo tipo
void saludos2(String nombre) {
  print("Hola $nombre");
}

void saludos3(String nombre) => print("Hola $nombre"); // Funcion de una sola linea

// Funcion return
String saludos4(String nombre) {
  String msg = "Bienvenido $nombre";
  return msg;
}
