//errors are properly documented -- they are not caught; programmer's fault

//excpetion can't be expected -- they need to be caught

void main(List<String> args) {
  tryCreatingPerson(age: -1);
  //_Exception
  //Exception: Age must be positive

  tryCreatingPerson(age: 150);
  //String
  //Age must be less than 140

  tryCreatingPerson(age: 20); //20
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
}

class Person {
  final int age;

  Person({
    required this.age,
  }) {
    if (age < 0) {
      //in dart we can throw anything like throw 1 or throw 'hello'
      //but it is recommended to throw an exception instance
      throw Exception('Age must be positive');
    } else if (age > 140) {
      throw 'Age must be less than 140';
    }
  }
}
