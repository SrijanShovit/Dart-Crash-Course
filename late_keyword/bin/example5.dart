//late final variables

void main(List<String> args) {
  final person = Person();
  person.description = 'Description 1';
  print(person.description); //Description 1
  person.description = 'description 2';
  print(person.description); //description 2

  final woof = Dog();
  woof.description = 'Description 1';
  print(woof.description); //Description 1

  //once resolved or assigned once,we can't change it
  try {
    woof.description = 'Description 2';
    print(woof.description);
  } catch (e) {
    print(
        e); //LateInitializationError: Field 'description' has already been initialized.
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
