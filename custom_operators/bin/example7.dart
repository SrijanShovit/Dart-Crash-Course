//custom operators need not work on same data type always

//Person + Person = Family
//Person + Pet = Family
//Family + Pet = Family
//Family + Person = Person

void main(List<String> args) {
  final mom = Person(name: 'Jane');
  final dad = Person(name: 'John');
  final son = Person(name: 'Jack');
  final daughter = Person(name: 'Jill');
  final tommy = Pet(name: 'Tom');

  final family1 = mom + son;
  print('Mom + Son = $family1');

  final family2 = daughter & tommy;
  print('Daughter + Tommy = $family2');
  final family3 = family2 + dad;
  print('Daughter + Tommy  + Dad = $family3');

  final finalFamily = family1 ^ family3;
  print('Mom + Son + Daughter + Tommy  + Dad = $finalFamily');
}

class Person {
  final String name;
  const Person({
    required this.name,
  });
  @override
  String toString() => 'Person (name = $name)';
}

class Pet {
  final String name;
  const Pet({
    required this.name,
  });
  @override
  String toString() => 'Pet (name = $name)';
}

class Family {
  final List<Person> members;
  final List<Pet> pets;

  const Family({
    required this.members,
    required this.pets,
  });

  @override
  String toString() => 'Family (members = $members,pets = $pets)';
}

//overloading same operator several times is not allowed in dart

extension on Person {
  Family operator +(Person other) => Family(
        members: [this, other],
        pets: [],
      );
  Family operator &(Pet other) => Family(
        members: [this],
        pets: [other],
      );
}

extension on Family {
  Family operator &(Pet other) => Family(
        members: members,
        pets: [
          ...pets,
          other,
        ],
      );

  Family operator +(Person other) => Family(
        members: [
          ...members,
          other,
        ],
        pets: pets,
      );

  //merge 2 families
  Family operator ^(Family other) => Family(members: [
        ...members,
        ...other.members,
      ], pets: [
        ...pets,
        ...other.pets,
      ]);
}

/*
OP:
Mom + Son = Family (members = [Person (name = Jane), Person (name = Jack)],pets = [])

Daughter + Tommy = Family (members = [Person (name = Jill)],pets = [Pet (name = Tom)])

Daughter + Tommy  + Dad = Family (members = [Person (name = Jill), Person (name = John)],pets = [Pet (name = Tom)])

Mom + Son + Daughter + Tommy  + Dad = Family (members = [Person (name = Jane), Person (name = Jack), Person (name = Jill), Person (name = John)],pets = [Pet (name = Tom)])
 */