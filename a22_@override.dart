

class Vehiculos {
  // Clase vehiculo
  late String Objecte;
  late String color;
  late String marca;
  late String modelo;

  
  void MostrarVehiculo() {
    print("Objeto: $Objecte, Marca: $marca, Modelo: $modelo, Color: $color");
  }

  void QuevehiculoSoy() {
    print("No estoy definido");
  }
}

class Camion extends Vehiculos // Clase camion hereda todo los parmetros de vehiculo
{
      @override
      void QuevehiculoSoy() {
     print("Soy un camion");
  }

}

void main() {
  var camion = new Vehiculos(); //Herencia de los parametros de la clase Vehiculos en la clase camion
  //camion.MostrarVehiculo();
  camion.QuevehiculoSoy();
}
