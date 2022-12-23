//custom exception classes
//if we are throwing a specific exception often, we should create a custom exception class

void main(List<String> args) {
  tryCreatingPerson(age: 20);
  print("=====================");
  tryCreatingPerson(age: -1);
  print("=====================");
  tryCreatingPerson(age: 141);
  print("=====================");
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
    //catching specific exception
  } on InvalidAgeExcpetion catch (exception, stackTrace) {
    //stackTrace is unwinding  of the stack right before or at the point that excpetion happened
    print(exception);
    print(stackTrace);
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

/*
OP:

20
=====================
InvalidAgeExcpetion: age:-1 , message : Age cannot be negative
#0      new Person (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example2.dart:41:7)
#1      tryCreatingPerson (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example2.dart:15:11)
#2      main (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example2.dart:7:3)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)

=====================
InvalidAgeExcpetion: age:141 , message : Age cannot be greater than 140
#0      new Person (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example2.dart:46:7)
#1      tryCreatingPerson (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example2.dart:15:11)
#2      main (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example2.dart:9:3)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)

=====================
 */