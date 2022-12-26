//Mixins are entities that can be used to add functionality to a existing class or enums

//mixins are written at top level of application,inside class or inside enums

//mixins are highly useful for multiple inheritence which is not aloowed in dart

void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10);
  person.jump(speed: 3);
}

mixin HasSpeed {
  //any other mixin/class using this mixin will have access to  this property
  abstract double speed;
}

//CanJump mixin is implementing HasSpeed mixin
mixin CanJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping at the speed of $speed');
    //HasSpeed ki speed = speed given
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  //we have to use HasSpeed if we want to use two bcz they are built on top of that and so,HasSpeed needs to be brought in

  //HasSpeed needs to be brought first

  //although speed is used here as per need but dart cannot contractually figureit out
  @override
  double speed;
  Person() : speed = 0.0;
}
