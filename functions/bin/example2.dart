//not having specified any return type for function, by default dart takes dynamic data type

void main(List<String> args) {
  print(doNothing()); //null;dynamic data type

  greet();

  ///you would never invoke the function and assign the result to a variable
}

//by adding void the call site won't be able to consume that value
doNothing() {}

void greet() {
  print('Good morning!');
}
