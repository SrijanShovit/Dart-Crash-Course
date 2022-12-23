//Dart doesn't support enums with associated values
//Enhance enums is used but it makes things more complicated

void main(List<String> args) {
  final srijan = Person(
    name: 'Srijan',
    car: Car.teslaModelX,
  );

  print(
      "${srijan.name} drives a ${srijan.car.manufacturer} ${srijan.car.model} manufactured in ${srijan.car.year}");
  //Srijan drives a Tesla Model X manufactured in 2035
}

class Person {
  final String name;
  final Car car;

  const Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  //this is problematic in dart as other languages allow to just specify data types here and then make instances
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2035,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });
}
