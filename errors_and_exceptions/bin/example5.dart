//We can annotate a function with a class
//We will tell that a specific function throws a specific exception

//Instead of just documenting them we can go to those classes by clicking on them
import 'dart:async';

void main(List<String> args) {
  try {
    print('Dog aged 11 is going to run...');
    Dog(
      age: 11,
      isTired: false,
    ).run();
  } catch (e) {
    print(e);
    //Dog aged 11 is going to run...
// Instance of 'DogIsTooOldExcpeption'
  }

  try {
    print('A tired puppy is going to run...');
    Dog(
      age: 1,
      isTired: true,
    ).run();
  } catch (e) {
    print(e);
    //  A tired puppy is going to run...
// Instance of 'DogIsTiredExcpetion'
  }
}

//it throws something of type T
class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class DogIsTooOldExcpeption implements Exception {
  const DogIsTooOldExcpeption();
}

class DogIsTiredExcpetion implements Exception {
  const DogIsTiredExcpetion();
}

class Animal {
  final int age;

  const Animal({
    required this.age,
  });

  //this is error not exception so can't be caught
  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
  //here we tell that we have run function which is not implemented
  //whoever extends this class must implement this function
}

class Dog extends Animal {
  final bool isTired;
  const Dog({
    required super.age,
    required this.isTired,
  });

  @Throws([DogIsTooOldExcpeption, DogIsTiredExcpetion])
  //Documentation
  ///This function throws the following exceptions:
  /// - [DogIsTooOldExcpeption] if the dog is older than 10 years
  /// - [DogIsTiredExcpetion] if the dog is tired
  @override
  void run() {
    if (age > 10) {
      throw DogIsTooOldExcpeption();
    } else if (isTired) {
      throw DogIsTiredExcpetion();
    } else {
      print('Dog is running');
    }
  }
}


/*
In run method of animal class we say it throws UnimplementedError

In overridden run method of Dog class, we say that it will throw DogIsTooOldExcpeption or DogIsTiredExcpetion
*/