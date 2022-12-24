//we want to have comparators and pass our functions to them for sorting

void main(List<String> args) {
  sort(ascending: true);
  sort(ascending: false);
}

const ages = [100, 20, 10, 90, 40];
const names = ['Foo', 'Bar', 'Baz'];
const distance = [3.1, 10.2, 1.3, 4.2];

//isLessThan will work on values until they are Comoarable
int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int greaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  //function being to another function
  final comparator = ascending ? isLessThan : greaterThan;
  print(
      //make a copy of list
      //then sort
      [...ages]..sort(comparator));

  print([...names]..sort(comparator));

  print([...distance]..sort(comparator));
}

/*
OP:
[10, 20, 40, 90, 100]
[Bar, Baz, Foo]
[1.3, 3.1, 4.2, 10.2]

[100, 90, 40, 20, 10]
[Foo, Baz, Bar]
[10.2, 4.2, 3.1, 1.3]
 */