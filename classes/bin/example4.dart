void main(List<String> args) {
  const srijuu = Person(
    firstName: 'Srijan',
    lastName: 'Shovit',
  );
  print(srijuu.fullName); //Srijan Shovit
  print(srijuu.fullName); //Srijan Shovit
}

//M-1:
///Full-name will be calculated upon creating instance of Person and since firstName and lastName are final,they and thus,fullName could not be changed internally either
///This carries sense
///Heavy calculation things can be done this way

// class Person {
//   final String firstName;
//   final String lastName;

//   final String fullName;

//   //without taking fullName in object we can fix it in class only via initialiser list
//   const Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = '$firstName $lastName';
// }

// M-2:
///Here,fullName is calculated everytime when getter is called
///makes no sense as fullname is not a thing to get change often
///but helpful is something changes often
class Person {
  final String firstName;
  final String lastName;

  //getter
  String get fullName => '$firstName $lastName';

  const Person({
    required this.firstName,
    required this.lastName,
  });
}
