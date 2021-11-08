class Vehiculos {
  // Clase vehiculo
  late String Objecte;
  late String color;
  late String marca;
  late String modelo;

  Vehiculos(this.Objecte, this.marca, this.modelo, this.color);

  void MostrarVehiculo() {
    print("Objeto: $Objecte, Marca: $marca, Modelo: $modelo, Color: $color");
  }


}

class Camion extends Vehiculos // Clase camion hereda todo los parmetros de vehiculo
{
  Camion(String Objecte, String marca, String modelo, String color) : super(Objecte, marca, modelo, color); //Super Constructor
  
}

void main() {
  var camion =
      new Vehiculos("Objecto1", "Volvo", "TZR1", "Amarillo"); //Herencia de los parametros de la clase Vehiculos en la clase camion
  camion.MostrarVehiculo();
}
