//DEFINE VEHICLE CLASS

import 'vehicle.dart';

import 'mixins.dart';

class Plane extends Vehicle with Run,Fly {

  Plane({required name,speed = 1000,weight = 10000,capacity = 1000})
        :super(name:name,
              speed:speed,
              weight:weight,
              capacity:capacity);

  @override
  void describe() {
    print("I'm a car");
    // TODO: implement describe
  }

}


