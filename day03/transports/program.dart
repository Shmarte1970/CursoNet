
import 'bike.dart';
import 'car.dart';
import 'vehicle.dart';

void main(List<String> arguments){

  List<Vehicle> vehicles = [
                Vehicle(speed: 100,weight: 400, capacity: 3),
                Vehicle(speed: 130,weight: 400, capacity: 3),
                Vehicle(speed: 160,weight: 400, capacity: 3)
  ];

  List<Vehicle> homologatedVehicles =
              vehicles.where(
                      (vehicle){
                        var i = 0;
                        var str = "this is styring";
                        //ANY STUFF TO DO
                        return vehicle.isHomologated();
                      }).toList();

  //WITH ARROW FUNCTION
  List<Vehicle> homologatedVehicles2 =
          vehicles.where(
                  (vehicle)=>vehicle.isHomologated()
          ).toList();


  Car car1 = new Car("AudiA1",doors: 4,isOffroad: true,color: "red",weight: 100);

  print("ID CAR IS ${car1.idCar}");
  car1.isHomologated();

  List<Vehicle> multitypes = [
      Car("SEATATECA12"),
      Car("SEATLEON"),
      Car("SEATTARRACO"),
      Bike(),
      Bike(),
  ];

  multitypes.forEach((vehicle)=>{
      vehicle.isHomologated()
  });





}