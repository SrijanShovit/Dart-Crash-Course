//named parameters can also be in whatever order you want at call site

void main(List<String> args) {
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'Foo');
  describePerson(name: 'Foo', age: 20);
  describePerson(age: 20, name: 'Foo');
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name,you are $age years old');
}

/*
OP:
Hello null,you are null years old
Hello null,you are 20 years old
Hello Foo,you are null years old
Hello Foo,you are 20 years old
Hello Foo,you are 20 years old
 */