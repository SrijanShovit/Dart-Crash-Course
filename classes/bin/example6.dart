//in last ex we had no control who sets the properties in class
//this is what we will set here

void main(List<String> args) {
  final car = Car();
  try {
    car.drive(speed: 10);
    car.drive(speed: -1);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;

  int get speed => _speed;

  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception("Speed can't be negative");
    }
    _speed = newSpeed;
  }

  void drive({required int speed}) {
    //by using this we'll call our setter which will do necessary check here

    //class ki speed pe setter ke through speed(incoming) set kro
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    //this speed is resolved by dart to be of class so need of this here
    speed = 0;
    print("Applying brakes");
    print("Stopped");
  }
}

/**
OP:

Accelerating to 10 km/h
Exception: Speed can't be negative
 */