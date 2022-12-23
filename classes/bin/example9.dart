//Factory constructors can create instances of their subclasses

//Normal ctr can create instance only of its class

//Factory ctr either creates instance of its class or its subclass but not any other thing

void main(List<String> args) {
  print(Vehicle.car()); //Vehicle of type Car

  print(Vehicle.truck()); //Vehicle of type Truck
}

class Vehicle {
  const Vehicle();

  //factory ctr that will create a car
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
