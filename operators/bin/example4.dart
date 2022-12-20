void main(List<String> args) {
  //binary infix --> they just calculate,return value ; no modification
  const age = 50;
  print(age + 20); //70
  print(age); //50
  print(age - 20); //30
  print(age); //50
  print(age * 20); //1000
  print(age); //50
  print(age / 20); //2.5
  print(age); //50
  print(age ~/ 20); //2
  print(age); //50
  print(age % 20); //10
  print(age); //50
  print(age == 20); //false
  print(
      age != 20); //true ; it first calls equality operator then negates result
  print(age > 20); //true
  print(age < 20); //false
  print(age >= 20); //true
  print(age <= 20); //false

  //bitwise
  print(age & 20);
  //0011 0010
  //0001 0100
  //0001 0000 --> 16

  print(age | 10);
  //0011 0010
  //0000 1010
  //0011 1010 --> 58

  print(age ^ 20);
  //0011 0010
  //0001 0100
  //0010 0110 --> 38

  print(age << 5);
  //0000 0011 0010
  //0110 0100 0000 --> 1600

  print(age >> 5);
  //0000 0011 0010
  //0000 0000 0001 --> 1
}
