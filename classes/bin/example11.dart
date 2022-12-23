//Abstract classes are bluprints for blueprints(other classes)

//suppose several bluprints have somethings in common so we can create their blueprint

void main(List<String> args) {
  const car = Car();
  print(car.kind); //VehicleKind.car
  car.accelerate(); //VehicleKind.car is accelerating
  car.decelerate(); //VehicleKind.car is decelerating

  const motorcycle = Motorcycle();
  print(motorcycle.kind); //VehicleKind.motorcycle
  motorcycle.accelerate(); //Motorcycle is accelerating
  motorcycle.decelerate(); //Motorcycle is decelerating
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

//extending works as we have given the only non-abstract property
class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

//Implememting means giving my own implementation of the abstract methods
//Creating my own blueprint implementation of the blueprint
class Motorcycle implements Vehicle {
  //no super here needed as no inheritence
  const Motorcycle();
  @override
  VehicleKind get kind => VehicleKind.motorcycle;

  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('Motorcycle is decelerating');
}

enum VehicleKind { car, truck, motorcycle, bicycle }
