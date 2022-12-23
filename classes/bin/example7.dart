//Creating instances are creating separate copies
//They don't affect each other
//using static we can make change in all copies when we change in one

void main(List<String> args) {
  final foo = Person();
  // foo.name = 'Foo';//error bcz name is no longer at copy level it is at person level

  Person.name = 'Srijuu';
  print(Person.name); //Srijuu
  Person.name = 'Srijan';
  print(Person.name); //Srijan

  //name is now created only once for the Person class
}

class Person {
  static String name = '';
}
