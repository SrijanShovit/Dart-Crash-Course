//Mixins are entities that can be used to add functionality to a existing class or enums

//mixins are written at top level of application,inside class or inside enums

//mixins are highly useful for multiple inheritence which is not aloowed in dart

void main(List<String> args) {}

mixin HasSpeed {
  //any other mixin/class using this mixin will have access to  this property
  abstract double speed;
}

//CanJump mixin is implementing HasSpeed mixin
mixin CanJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping at the speed of speed');
    //HasSpeed ki speed = speed given
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking at the speed of speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;
}
