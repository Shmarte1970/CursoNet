class Vehiculos {  // creacion de la clase
  late String Objecte;
  late String color; // Definicion de parametros para el objeto
  late String modelo;
  late String marca;

  void Arrancar() {
    // Una funcion del Objeto utilizo los valores creado en el objeto auto
    print(
        "Hola soy el $Objecte de la $marca $modelo de Color $color y estoy arrancando");
  }

  void CambiarValor(Vehiculos marca, Vehiculos modelo) {
    // funcion para cambiar valores en el objeto auto
    marca.marca = "GM";
    modelo.modelo = "Spitz";
  }

  void CambiarValor2(Vehiculos valor) { // cambio solo un parametro del Objeto2
    valor.modelo = "C4";
  }

  void CambiarValor3(Vehiculos marca, modelo, color) { // Cambio todos los parametros del objeto2
    marca.marca = "Cupra";
    modelo.modelo = "Panzer";
    color.color = "negro";
  }
}

void main() {
  var auto = new Vehiculos(); // declaracion del objeto auto
  auto.color = "Rojo"; // valores de los parametros del objeto auto
  auto.marca = "Ford";
  auto.modelo = "Fiesta";
  auto.Objecte = "Objeto1";
  auto.Arrancar(); //instanciar el objeto auto

  auto.CambiarValor(auto,
      auto); // paso de nuevos parametros para modificar el valores en el objeto auto
  auto.Arrancar(); // los parametros que paso tienen que llamarse como el objeto

  var auto2 = new Vehiculos(); // declaracion de un nuevo objeto
  auto2.color = "Blanco";
  auto2.marca = "Citroen";
  auto2.modelo = "Xara Picasso";
  auto2.Objecte = "Objeto2";
  auto2.Arrancar();

  auto2.CambiarValor2(auto2);
  auto2.Arrancar();
  auto2.CambiarValor3(auto2, auto2, auto2);
  auto2.Arrancar();
}
