//named paramters in curly braces of arguments need to have either default value or they must be optional

//with named paramters ,call site doesn't need to specify the parameters

//It says ok you have a paramter,I won't explicitly mention

void main(List<String> args) {
  sayHelloTo();
}

void sayHelloTo({String name = 'Bob'}) {
  print('Hello $name');
}

//OP : Hello Bob