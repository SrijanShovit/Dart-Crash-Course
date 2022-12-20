//optionality means a variable can have a value or not have a value

void main(List<String> args) {
  //both allowed due to ?
  const String? name = null;
  print(name); //null
  const String? name2 = 'John';
  print(name2); //John

  //if we are working with the value of null and don't have a data type dart understands it to be dynamic
  const someValue = null; //Type : dynamic
  print(someValue); //null
  print(someValue.runtimeType); //Null
}
