//mixins can be limited to specific data types

void main(List<String> args) {
  Human().run(); //Human is running
  // Fish().run();//invalid code bcz HasNoFeet doesn't bring the mixin CanRun
}

class Has2Feet {
  const Has2Feet();
}

//since mixin is on Has2Feet class,we need its subclasses to use that mixin

class Human extends Has2Feet with CanRun {
  const Human();
}

mixin CanRun on Has2Feet {
  //it says I'm available to any type that confirms to Has2Feet
  //but I'm not available to any other type even if they bring me in
  void run() {
    print('$runtimeType is running');
  }
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet
// with CanRun : 'CanRun' can't be mixed onto 'HasNoFeet' because 'HasNoFeet' doesn't implement 'Has2Feet'.
{
  const Fish();
}
