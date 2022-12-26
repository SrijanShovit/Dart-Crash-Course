void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz'];
  final foo = names.sublist(1);
  foo.forEach(
      print); //print function is passed to forEach; so each element is given to that print
  /**
      Bar
      Baz
       */
  print("--------");

  names.sublist(0, 1).forEach(print);
  /**
   * End index is exclusive
  Foo
   */

  //Lists are internally mutable
  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages); //[20, 30, 40, 50, 60]
  print("--------");

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Bar', 'Foo', 'Baz', 'Qux'];
  if (names1 == names2) {
    print("Both lists are same");
  } else {
    print("Not exactly same lists");
  }
  //Not exactly same lists
  print("--------");

  //Mapping a list means producing iterable of same or differen type after applying some operation
  print(
      ['Foo', 'Bar', 'Baz'].map((str) => str.toUpperCase())); //(FOO, BAR, BAZ)
  print(['Foo', 'Bar', 'Baz'].map((str) => str.length)); //(3, 3, 3)
}
