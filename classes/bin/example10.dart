//creating 10 instances of Person class all with role mom is tiring and irritating

//so better to create instances of Mom only

//Constructor is a special method that is not inherited
//Ctr of Person is never present in Dad or Mom class so it is called seaparately

void main(List<String> args) {
  final mom1 = Mom();
  print(mom1.role); //Role.mom

  final daddy = Dad();
  print(daddy.role); //Role.dad
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({
    required this.role,
  });
}

class Mom extends Person {
  // const Mom():role = Role.mom; //not allowed bcz dart under the hood calls super constructor

  const Mom()
      :
        //simple call parent ctr and pass the relevant role
        super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
