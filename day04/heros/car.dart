//DEFINE VEHICLE CLASS


import 'mixins.dart';
import 'vehicle.dart';


class Car extends Vehicle with Run{



  Car({required name,speed = 100,weight = 100,capacity = 10})
        :super(name:name,
              speed:speed,
              weight:weight,
              capacity:capacity);

  @override
  void describe() {
    // TODO: implement describe
    print("I'm a car");
  }

  @override
  void startRunning(){
    print("I'm running like a car");
  }

}


void main(){

  Car car1 = Car(name:"My new car",
              speed: 100,
              capacity: 30,
              weight: 1000);

}
