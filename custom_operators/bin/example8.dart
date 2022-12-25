//operators need not necesarily be created on extensions
//they can be created in original class

void main(List<String> args) {
  final meThisYear = Person(age: 21);
  print('Me this year is = $meThisYear');
  final meNextYear = meThisYear + 1;
  print('Me this year is = $meNextYear');
}

class Person {
  final int age;
  Person({
    required this.age,
  });

  Person operator +(int age) => Person(
        age: this.age + age,
      );
  @override
  String toString() => 'Person (age = $age)';
}

/*
OP:
Me this year is = Person (age = 21)
Me this year is = Person (age = 22)
 */