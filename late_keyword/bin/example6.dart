//we can have a late variable which depends on a late final variable

void main(List<String> args) {
  final person = Person();
  try {
    //avoid doing this in real code since it;s against the recommendations; instead use nullable values

    //fullName is tried to be resolved but quantities on it depends have not been initialised
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Srijan';
  person.lastName = 'shovit';
  print(person.fullName); //Srijan shovit
}

//In this case,ctr is needed
/*
class Person {
  final String firstName;
  final String lastName;
  late String fullName = '$firstName $lastName';
  Person(this.firstName, this.lastName);
}
*/

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
  //no ctor needed here

}
