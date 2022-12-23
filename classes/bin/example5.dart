//Methods are functions that belong to the blueprint of the class
//More power when used as setters

void main(List<String> args) {
  final car = Car();
  car.drive(speed: 20);
  print('Speed of car is ${car.speed} km/h');
  car.drive(speed: 40);
  car.stop();
}

class Car {
  int speed = 0;

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print("Applying brakes");
    print("Stopped");
  }
}

/*
OP:
Accelerating to 20 km/h
Speed of car is 20 km/h
Accelerating to 40 km/h
Applying brakes
Stopped
 */