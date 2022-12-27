void main(List<String> args) {
  //4 types of operators
  ///unary prefix,unary postfix,binary infix, compound assignment

  int age = 30;
  int age2 = --age; //not just descreases,but also returns
  print(age); //29
  print(age2); //29

  const bool a = true;
  print(a); //false
  print(!a); //true  ;only returning not changing original value

  int age3 = ++age;
  print(++age3); //31
  print(age3); //31 ; incrememting an modifying also

  ///unary bitwise complement prefix operator
  /// 1 : (0000 0000 0000 0000 0000 0000 0000 0001)
  print(~1); //-2
  //(1111 1111 1111 1111 1111 1111 1111 1110)

  print(-age); //-31 ; juts returns; no modification
  print(age); //31
}
