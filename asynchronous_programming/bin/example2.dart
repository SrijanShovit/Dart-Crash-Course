//what if our future errors out?
//how do we handle it?

void main(List<String> args) async {
  print(
    await getFullName(firstName: 'John', lastName: 'Doe'),
  ); //John Doe

  // print(
  //   await getFullName(firstName: '', lastName: 'Doe'),
  // );
  ///Unhandled exception:
// Instance of 'FirstOrLastNameMissingException'

  //using try-catch now
  try {
    print(
      await getFullName(firstName: 'John', lastName: 'Doe'),
    );
    print(
      await getFullName(firstName: '', lastName: 'Doe'),
    );
  } on FirstOrLastNameMissingException {
    print('First or last name is missing');
  }
}

//A future calss can carry with it either value or an excpetion
Future<String> getFullName({
  required String firstName,
  required String lastName,
}) async {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  } else {
    return '$firstName $lastName';
  }
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
}


/**
Since we await for the result using try catch seems fit here for handling Future Exceptions
 */