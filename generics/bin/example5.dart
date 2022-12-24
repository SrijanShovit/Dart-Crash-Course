//Unconstrained generic type definition
// <T extends num> is constrained
// <T> is unconstrained

void main(List<String> args) {
  const one = KeyValue(2, 1); //MapEntry<int, int>
  print(one);

  const two = KeyValue(1, 2.2); //MapEntry<int, double>
  print(two);

  const three = KeyValue(1, 'Foo'); //MapEntry<int, String>
  print(three);

  //here call site is dictating I don't want dart to understand the type
  const KeyValue four = KeyValue(1, 2); //MapEntry<dynamic, dynamic>
  print(four);
}

//Map Entry class already exists
typedef KeyValue<K, V> = MapEntry<K, V>;

//if we do like below all of them will lose their types to dynamic
// typedef KeyValue = MapEntry;

/*
OP:
MapEntry(2: 1)
MapEntry(1: 2.2)
MapEntry(1: Foo)
MapEntry(1: 2)
 */

/*
So using generic we don't need to specify data type but dart resolves them on their own

Without generics dart won't be able to resolve the type
*/