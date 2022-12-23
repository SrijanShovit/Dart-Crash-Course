//We can have different constructor for 1 class

void main(List<String> args) {
  const me = Person('Srijan', 22);
  print("${me.name} is ${me.age} years old"); //Srijan is 22 years old

  const daroga = Person.happu();
  print("${daroga.name} is ${daroga.age} years old"); //Happu is 45 years old

  const padosi = Person.vibhuti(30);
  print("${padosi.name} is ${padosi.age} years old"); //Vibhuti is 30 years old

  const roadChaap1 = Person.other(age: 16);
  print(
      "${roadChaap1.name} is ${roadChaap1.age} years old"); //Baz is 16 years old

  const roadChaap2 = Person.other();
  print(
      "${roadChaap2.name} is ${roadChaap2.age} years old"); //Baz is 13 years old

  const roadChaap3 = Person.other(name: "Tipu", age: 16);
  print(
      "${roadChaap3.name} is ${roadChaap3.age} years old"); //Tipu is 16 years old

  const roadChaap4 = Person.other(name: "Malkhan");
  print(
      "${roadChaap4.name} is ${roadChaap4.age} years old"); //Malkhan is 13 years old
}

class Person {
  final String name;
  final int age;

  //const beacuse this ctr will return constant value

  //Ctr 1
  const Person(
    this.name,
    this.age,
  );

  //ctr2 -- it always creates a person which name "Happu" and age 45
  //Person name already taken so Person.happu used
  const Person.happu()
      : name = 'Happu',
        age = 45;

  //ctr3 -- it sets name always to "vibhuti" but age is acceptable
  const Person.vibhuti(this.age) : name = 'Vibhuti';

  //ctr4 -- optionally takes name and age;use them if provided else use default values
  const Person.other({
    String? name,
    int? age,
  })  :
        //things after : is initializer list
        name = name ?? 'Baz',
        age = age ?? 13;
}
