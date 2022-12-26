void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz'];
  for (final name in names) {
    print(name);
  }
  /**
  Foo
  Bar
  Baz
   */

  print("--------");
  for (final name in names.reversed) {
    print(name);
  }
  /**
  Baz
  Bar
  Foo
   */
  print("--------");

  if (names.contains('Bar')) {
    print('Bar is in the list');
  }
  //Bar is in the list
  print("--------");

  // names.where(stringStartsWithLetterB); OR
  //closure form
  names.where((String value) => value.startsWith('B'));

  for (final name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }
  /**
  Bar
  Baz
   */
  print("--------");

  //Subscript form
  print(names.elementAt(1)); //Bar
  print(names[0]); //Foo

//preferable with 3rd party API , but not with my own code rather check length of list myself
  try {
    print(names[4]);
  } catch (e) {
    print(
        e); //RangeError (index): Invalid value: Not in inclusive range 0..2: 4
  }
  print("--------");
}

bool stringStartsWithLetterB
//take below line entirely except ; and paste inside where()
    (String value) => value.startsWith('B');
