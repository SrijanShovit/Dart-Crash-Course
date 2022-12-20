void main(List<String> args) {
  var age = 40;
  print(age--); //40 ; modifies after returning
  print(age); //39

  print(age++); //39 ; return then modify
  print(age); //40
}
