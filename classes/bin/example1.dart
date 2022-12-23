//any changes made to template are immediately available in the instances

void main(List<String> args) {
  //without require ,we don't know which parameter is what unless we look into the class
  // final person1 = Person('Foo', 20);

  //when required given we have to write what paramter stands for what
  //it is lot more readable and understanble wrt caller's perspective
  const person1 = Person(
    name: 'Srijan',
    age: 20,
  );

  print('${person1.name} is ${person1.age} years old'); //Srijan is 20 years old
}

class Person {
  //properties
  final String name;
  final int age;

  //class having no property has default constructor
  //but classes where we give properties must have constructor writteb

  //constructor has the job of creating that instance

  //Valid constructor but no hint which paramter is for what
  // Person(this.name, this.age);

  //require can only be inside {}
  const Person({
    required this.name,
    required this.age,
  });

//above is short form of creating constructor
/* Other syntax of creating constructor:

(1)
  Person({
    required String name,
    required int age,
  }){
    this.name = name;
    this.age = age;
  }

(2)

  Person({
    required String name,
    required int age,
  }): this.name = name, this.age = age;
  })
}
*/
}
