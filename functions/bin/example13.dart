//mixing various parameter styles
//all the styles will enforce their individual rules

void main(List<String> args) {
  describeFully('Foo');
  describeFully('Foo', lastName: null);
  describeFully('Foo', lastName: 'Baz');
}

void describeFully(
  //this is a positional parameter
  //it is not optional
  String firstName, {
  //this is a named parameter
  //it is optional
  String? lastName = 'Bar',
}) {
  print('Hello $firstName $lastName');
}

/*
OP:
Hello Foo Bar
Hello Foo null
Hello Foo Baz
 */