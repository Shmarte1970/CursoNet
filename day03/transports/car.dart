import 'package:untitled/intro_dart/day03/transports/vehicle.dart';
import 'package:untitled/intro_dart/day03/transports/vehicle_properties.dart';
import 'package:untitled/intro_dart/day03/transports/vehicle_properties.dart';

class Car extends Vehicle implements VehicleProperties{

  String _idCar = "XXXXX";
  double doors;
  bool isOffroad;
  String color;

  String get idCar {

    print("GETTING ID CAR FROM CLASS");
    return _idCar;
  }

  void set idCar(String value){
    _idCar = value;
  }


  Car(idCar,{
      this.doors = 4,
      this.isOffroad = false,
      this.color = "white",
      weight = 100,
      speed = 120,
      capacity = 4
    }):super(weight: weight,speed: speed,capacity: capacity){

    this._idCar = idCar;
  }

  @override
  bool canAsphalt() {
    // TODO: implement canAsphalt
    return true;
  }

  @override
  bool canFly() {
    // TODO: implement canFly
    return false;

  }

  @override
  bool canNavigate() {
    // TODO: implement canNavigate
    return false;
  }

  @override
  void go() {
    print("Going with my car");
    // TODO: implement go
  }

  @override
  void stop() {
    print("Stopping my car");
    // TODO: implement stop
  }

}