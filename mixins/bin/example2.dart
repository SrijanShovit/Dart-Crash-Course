//mixins are data types themselves
//example to accept mixin as a parameter to a function

void main(List<String> args) {
  final johnDoe = Person(
    firstName: 'John',
    lastName: 'Doe',
  );
  print(johnDoe.fullName);
  //Inside mixin John Doe
  //this was calculated in mixin

  print(getFullName(johnDoe));
  //Inside mixin John Doe
  //this is delegating to the same property through the function defined below
}

//HasFullName brings with it the other two
//i.e. if an object confirms to HasFullName then it will also confirm to HasFirstName and HasLastName
String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  //this mixin says whoever uses me has to have a string getter firstName
  String get firstName;
}

mixin HasLastName {
  //this mixin says whoever uses me has to have a string getter lastName
  String get lastName;
}

//we create a mixin
//if you have a firstName and lastName,you have to have a fullName for sure
//It will be created for u

//this mixin required the two so it is 'On' the two
mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => 'Inside mixin $firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  ///create overridden getters
  /////instead of getter we use final property bcz in both cases,it is a property that can be read from
  @override
  final String firstName;

  @override
  final String lastName;

  Person({
    required this.firstName,
    required this.lastName,
  });
}
