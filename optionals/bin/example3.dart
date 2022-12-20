//nullable values in dart are by deafult null
void main(List<String> args) {
  int a;
  // print(a);//error
  //Initialisation needed
  a = 20;
  print(a); //20

  String? lastName;
  print(lastName); //null ; no initilaisation needed

  //compound null assignment operator
  ///whenever see ??=
  ///assign the value on right to the variable on left only if the variable is null
  double? size = null;
  print(size); //null
  size ??= 6.7;
  print(size); //6.7

  double? length = 5;
  print(length); //5.0
  length ??=
      6.7; //warning printed : The left operand can't be null, so the right operand is never executed
  print(length); //5.0
}

void doSomething(String? one, String? two) {
  one ??= two;
  //here dart cannot give any warning as it doesn;t have things clear now
}
