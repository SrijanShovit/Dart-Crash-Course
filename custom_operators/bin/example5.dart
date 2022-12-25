/*
[1,2,3] - [1,2] = [3]
[1,2,3,4] - [1,4] = [2,3]
[1,2,3] - [1,2,3] = []
 */

void main(List<String> args) {
  print([1, 2, 3] - [1, 2]); //(3)
  print([1, 2, 3] - [1, 2, 3]); //()
  print([1, 2, 3] - [2, 1, 3]); //()
  print(['Foo', 'Bar', 'Baz'] - ['Baz', 'Bar']); //(Foo)
}

extension Remove<T> on Iterable<T> {
  //where takes all elements of an iterable and applies the function
  //if result is true then all those elements are collected
  //it is like filter
  Iterable<T> operator -(Iterable<T> other) =>
      //take 1;is 1 present in other => true
      //take 2;is 2 present in other => true
      where((element) => !other.contains(element));
}
