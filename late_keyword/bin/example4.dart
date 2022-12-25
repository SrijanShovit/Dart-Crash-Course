void main(List<String> args) {
  final person = Person();
  //function is only called 1st time to resolve;after that resolved value is used
  print(person.fullName);
  print(person.lastName);
  print(person.firstName);

  print(person.fullName);
  print(person.lastName);
  print(person.firstName);
}

class Person {
  late String fullName = _getFullName();

  //late is must in below two as they are dependent when fullName is resolved
  //then only they can be solved
  //so they have to be late
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('_getFullName()  is called');
    return 'Foo Bar';
  }
}

/*
OP:
_getFullName()  is called
Foo Bar
Bar
Foo
Foo Bar
Bar
Foo
 */