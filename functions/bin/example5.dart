void main(List<String> args) {
  sayHelloTo();

  //we to specify paramter's name always in cased of named paramters
  sayHelloTo(name: null);
  sayHelloTo(name: 'Bob');
}

void sayHelloTo({String? name}) {
  print('Hello $name');
}

/*
OP:
Hello null
Hello null
Hello Bob
 */