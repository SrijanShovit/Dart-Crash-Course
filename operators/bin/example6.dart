void main(List<String> args) {
  var myAge = 20;
  //compound assignment; first assign then return from print
  print(myAge = 30); //30
  print(myAge); //30
  print(myAge ~/ 20); //1
  print(myAge); //30
  print(myAge ~/= 20); //1 ; const myage = 20 wouldn't have allowed this
  print(myAge); //1
  print(myAge &= 20); //(0000 0001 & 0001 0100) --> 0000 0000 --> 0
}
