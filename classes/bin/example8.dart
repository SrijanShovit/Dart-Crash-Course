//example to keep count how many times instance has been created

void main(List<String> args) {
  print(Car.carsInstantiated); //0

  //just create an instance
  Car(carName: 'Suzuki');
  print(Car.carsInstantiated); //1

  //create another instance
  Car(carName: 'Honda');
  print(Car.carsInstantiated); //2
}

class Car {
  static int _carInstantiated = 0;
  static int get carsInstantiated => _carInstantiated;

  //can only be called from within the class
  static void _incrementCarsInstantiated() => _carInstantiated++;

  final String carName;
  Car({
    required this.carName,
  }) {
    _incrementCarsInstantiated();
  }
}
