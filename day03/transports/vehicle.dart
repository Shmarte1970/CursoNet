



import 'package:untitled/intro_dart/day03/transports/vehicle_properties.dart';

class Vehicle{

  int weight;
  int speed;
  int capacity;// == speed / capacity

  Vehicle(
      {required this.weight,required this.speed ,required this.capacity }){
  }

  bool isHomologated(){
    print("HOMOLOGATION VEHICLE");

    if(this.speed > 120){
      return false;
    }else{
      return true;
    }

  }


  void describe(){
    print("I'm a vehicle!");
    print("My weight is ${this.weight}");
    print("My speed is:${this.speed}");
    print("My capacity is${this.capacity}");

  }

  @override
  bool canAsphalt() {
    // TODO: implement canAsphalt
    throw UnimplementedError();
  }

  @override
  bool canFly() {
    // TODO: implement canFly
    throw UnimplementedError();
  }

  @override
  bool canNavigate() {
    // TODO: implement canNavigate
    throw UnimplementedError();
  }

  @override
  void stop() {
    // TODO: implement stop
  }

  // new Vehicle(1000,120,6)

}