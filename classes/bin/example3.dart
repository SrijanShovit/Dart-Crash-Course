void main(List<String> args) {
  final v = Vehicle(4);
  //toString is called on Objects

  ///w/o toString() overridden
  // print(v); //Instance of 'Vehicle' ; print internall calls toString
  // print(v.toString()); //Instance of 'Vehicle'

  ///with toString() overridden
  print(v); //Classname : Vehicle with property : 4 wheels
  print(v.toString()); //Classname : Vehicle with property : 4 wheels

  //the child classes have inherited the overridden toString() and we don't need to tell dart which class

  print(Car());
  //Classname : Car with property : 4 wheels
  // Instance of 'Car'

  print(Bicycle());
  //Classname : Bicycle with property : 2 wheels
  // Instance of 'Bicycle'
}

//every class in dart extends Object class
class Vehicle extends Object {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  //that is why toString is overridden because it is called on Objects and is always used by print
  //so toString() is necessary to be overridden
  //to print custom information about instance
  @override
  String toString() {
    if (runtimeType == Vehicle) {
      return 'Vehicle with $wheelCount wheels';
    } else {
      print('Classname : $runtimeType with property : $wheelCount wheels');
      return super.toString();
    }
  }
}

class Car extends Vehicle {
  //while calling Car() str,dart calls parent ctr

  //M-1
  const Car() : super(4); //I want dart to call parent ctr with 4 as argument
  //it adds functionality to parent class

  //M-2
  // const Car(super.wheelCount);
  //telling dart whoever tries to instantiate Car, pass wheelCount also which will be passed to parent ctr
  //But this desn't add any functionality to Vehicle class
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
