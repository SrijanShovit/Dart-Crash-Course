void main(List<String> args) {
  const person = Person(height: 1.7);
  const dog = Dog(height: 1);
  print(person.height); //1.7
  print(dog.height); //1
}

mixin HasHeight<H extends num> {
  H get height;
}

//typedef aliased name also is a mixin
typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasDoubleHeight {
  @override
  // final int height;//error
  final double height;
  const Person({required this.height});
}

class Dog with HasIntHeight {
  @override
  final int height;
  const Dog({required this.height});
}
