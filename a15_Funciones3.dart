void main() {
  saludos(
      nombre: "Pedro",
      apellido: " Rios"); // Valores de los parametros para la funcion
  saludos(apellido: "Soler"); // Ejemplo de como solo paso el parametro apellido. Me pintara por pantalla solo el apellido.
}

void saludos(
    {String nombre = "", String apellido = ""}) // Declaracion de la funcion
{
  var saludos = new StringBuffer(
      "Bienvenido a Dart"); // Construccion del String sera el StringBuffer mas los parametros que pasemos desde arriba
  if (nombre != null) // compracion de que el nombre no este vacio
  {
    saludos.write(" $nombre"); // añado el valor nombre a la funcion saludo
  }
  if (apellido != null) {
    saludos
        .write("$apellido"); // añado el valor de apellido a la funcion saludo
  }

  print(saludos
      .toString()); // muestro el string construido apartir del StringBuffer + los parametros pasados en saludo y que se ha añadido con saludos.write
}
