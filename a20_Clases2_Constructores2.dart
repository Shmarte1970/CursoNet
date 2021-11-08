class Vehiculos {
  // creacion de la clase
  late String Objecte;
  late String color; // Definicion de parametros para el objeto
  late String modelo;
  late String marca;

  Vehiculos(this.Objecte, this.marca, this.color, this.modelo); // Mas eficiente para la creacion de un constructor
  
  void Arrancar() {
    // Una funcion del Objeto utilizo los valores creado en el objeto auto
    print("Hola soy el $Objecte de la Marca $marca $modelo y estoy arrancando");
  }

  void CambiarValor(Vehiculos marca, Vehiculos modelo) {
    // funcion para cambiar valores en el objeto auto
    marca.marca = "GM";
    modelo.modelo = "Spitz";
  }

  void Velocidad(int speed) {
    print("Mi velocidad es de $speed Km/h");
  }
}

class Class {}

void main() {
  var auto = new Vehiculos(
      "Objeto1", "Ford", "Mustag", "Negro"); // declaracion del objeto y sus parametros
  var auto2 = new Vehiculos("Objeto2", "Dodge", "", "");

  auto.Arrancar();
  auto2.Arrancar();
}
