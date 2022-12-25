//optional positional parameters
//it doesn't mean positional parameters with optional data type
//given in square brackets

//they can have deafult value
//or optional data type

import 'package:test/expect.dart';

void main(List<String> args) {
  //giving parameters is optional
  //they will be in order
  makeUpperCase();
  makeUpperCase('Foo');
  makeUpperCase('Foo', 'Bar');
  makeUpperCase(null);
  makeUpperCase(null, 'Bar');
  // makeUpperCase('Foo', null);//invalid code
}

void makeUpperCase([
  String? name,
  String lastName = 'Baz',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
  print('------------');
}

/*
OP:

null
BAZ
------------
FOO
BAZ
------------
FOO
BAR
------------
null
BAZ
------------
null
BAR
------------
 */