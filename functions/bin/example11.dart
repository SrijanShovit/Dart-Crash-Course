//positional arguments
//always required
//no default values
//they don't have names associated with them
//they are passed in order
//not placed in curly brackets

void main(List<String> args) {
  //valid codes
  sayGoodbyeTo('Foo', 'Bar'); //Goodbye, Foo and Bar
  sayGoodbyeTo('Bar', 'Foo'); //Goodbye, Bar and Foo

  //invalid codes
  //sayGoodbyeTo();
  //sayGoodbyeTo('Foo');
}

void sayGoodbyeTo(
  String person,
  String andOtherPerson,
) {
  print('Goodbye, $person and $andOtherPerson');
}
