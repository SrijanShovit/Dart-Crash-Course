//generic extensions can be created on any data type

void main(List<String> args) {
  //as long as this guy is a person grab name
  final personName = personThing.mapIfOfType(
        (Person p) => p.name,
      ) ??
      'Unknown person name';
  print(personName); //Foo

  final personName2 = personThing.mapIfOfType(
        (Animal p) => p.name,
      ) ??
      'Unknown person name';
  print(personName2); //Unknown person name

  final animalName = animalThing.mapIfOfType(
        (Animal a) => a.name,
      ) ??
      'New animal species discovered';
  print(animalName); //Bar
}

abstract class Thing {
  final String name;
  const Thing({required this.name});
}

class Person extends Thing {
  final int age;

  const Person({
    required String name,
    required this.age,
  }) : super(name: name);
}

class Animal extends Thing {
  final String species;
  const Animal({
    required String name,
    required this.species,
  }) : super(name: name);
}

const Thing personThing = Person(
  name: 'Foo',
  age: 20,
);

const Thing animalThing = Animal(
  name: 'Bar',
  species: 'Dog',
);

extension<T> on T {
  //we expect E --> (Person p)
  //is this person then ok send name
  R? mapIfOfType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}
