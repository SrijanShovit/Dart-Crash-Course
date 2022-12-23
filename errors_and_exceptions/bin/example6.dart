void main(List<String> args) {
  final person = Person(age: 10);
  print(person); //Person(age: 10)
  person.age = 0;
  print(person); //Person(age: 0)

  try {
    //just for demo
    //never catch an error
    //make sure that you chnage your program in order to avoid that error
    person.age = -1;
    print(person);
  } catch (e) {
    print(e);
  } finally {
    print(person);
  }

  /*
  OP of this block:
  Invalid argument(s): age cannot be negative
  Person(age: 0)
   */
}

class Person {
  int _age;
  Person({
    required int age,
  }) : _age = age;

  //getter for that private property
  int get age => _age;

  set age(int value) {
    if (value < 0) {
      throw ArgumentError('age cannot be negative');
    }
    _age = value;
  }

  @override
  String toString() => 'Person(age: $_age)';
}
