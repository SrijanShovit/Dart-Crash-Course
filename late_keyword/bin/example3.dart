void main(List<String> args) {
  final person = Person();
  print(person.age);

  print("--------------");
  print(person.description);
}

class Person {
  //on creating instance of this function,this isn't initialised neither the function is called until it is used
  late String description = heavyCalculationOfDescription();
  final int age;
  Person({this.age = 18}) {
    print('Constructor is called');
  }
  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return 'Foo Bar';
  }
}

/**
OP:
Constructor is called
18
--------------
Function "heavyCalculationOfDescription" is called     
Foo Bar
 */
