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