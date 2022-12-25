void main(List<String> args) {
  const names = ['Seth', 'Kathy', 'Ethan', 'Megan'];
  print(names * 2); //(Seth, Kathy, Ethan, Megan, Seth, Kathy, Ethan, Megan)
}

//* will operate on List/Iterable
//so create extension on Iterable
//but ensure return type of same Iterable
//Iterable is itself generic class
//so constraint our extension using T
extension Times<T> on Iterable<T> {
  //we can use synchronous generators in dart to return an instance of Iterable
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
