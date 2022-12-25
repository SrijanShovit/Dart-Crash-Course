//late instance variables should not be initialised inside constructor
//otherwise they won't be lazy

//so late variables if assigned inside ctr,they are resolved immediately

void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = WrongImplementationOfFamily(members: [
    johnDoe,
    janeDoe,
  ]);

  print(doeFamily);
  print(doeFamily.membersCount);

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jane Smith');
  final smithFamily = CorrectImplementationOfFamily(
    members: [
      johnSmith,
      janeSmith,
    ],
  );
  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  final String name;
  Person({
    required this.name,
  });
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    //this shouldn't be called as until instance used how can it resolve
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

//OP with this class :
// Getting members count --> it is called even before next statement
// Instance of 'WrongImplementationOfFamily'
// 2

class CorrectImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  CorrectImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
/*
OP: Resolved properly
Instance of 'CorrectImplementationOfFamily'
Getting members count
2
 */

//No try catch needed for late varibles
//If we feel very uncomfortable with late variables,use optional or nullable values; late variables might not be coreect to use there