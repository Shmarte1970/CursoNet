

import 'package:untitled/intro_dart/day03/transports/vehicle.dart';
import 'package:untitled/intro_dart/day03/transports/vehicle_properties.dart';

class Bike extends Vehicle implements VehicleProperties{
  int weight;
  int speed;
  int capacity;
  double wheels;
  double cc;
  String color;
  bool hasAbs;

  @override
  bool isHomologated(){
    print("HOMOLOGATION BIKE");
    if(cc <= 50 && speed > 120){
      return false;
    }else{
      return true;
    }
  }


  Bike({this.weight = 200,
      this.speed = 140,
      this.cc = 125,
      this.capacity = 100,
      this.wheels = 2,
      this.hasAbs = false,
      this.color = "black"}):super(weight:weight,speed:speed,capacity:capacity);

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
    // TODO: implement go
    print("I push the throtle and run");
  }

  @override
  void stop() {
    // TODO: implement stop
  }

}