void main(List<String> args) {
  //since we know a particular excpetion might come so use try catch to handle it
  try {
    tryCreatingPerson(age: 20);
    tryCreatingPerson(age: -1);

    tryCreatingPerson(
        age:
            141); //this statement doesn't get excuted because we entered in catch block wrt to previous try statement

  } catch (e, st) {
    print("Catching exception in main");
    print(e);
    print(st);
    print("xxxxxxxxxxxxxxxxxxxxxx");
  }
}

//if this function is like i am not going to handle exception (InvalidAgeExcpetion)
//whoever calls me has to handle it
//so I will rethrow it
void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  }
  //in the specific case of InvalidAgeExcpetion I won't handle it
  //I will catch other exceptions
  on InvalidAgeExcpetion {
    rethrow;
  } catch (e, st) {
    print("Catching exception in tryCreatingPerson");
    print(e);
    print(st);
    print('-------------------');
  }
}

class InvalidAgeExcpetion implements Exception {
  final int age;
  final String message;

  InvalidAgeExcpetion(this.age, this.message);

  @override
  String toString() => 'InvalidAgeExcpetion: age:$age , message : $message';
}

class Person {
  final int age;

  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw InvalidAgeExcpetion(
        age,
        'Age cannot be negative',
      );
    } else if (age > 140) {
      throw InvalidAgeExcpetion(
        age,
        'Age cannot be greater than 140',
      );
    }
  }
}
