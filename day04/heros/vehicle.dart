//DEFINE VEHICLE CLASS

import 'info.dart';

abstract class Vehicle implements Info{

  String name;
  int speed;
  int capacity;
  int weight;

  Vehicle({required this.name,
            this.speed = 10,this.capacity = 4,this.weight = 1000});

}
