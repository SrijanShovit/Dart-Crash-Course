//named paramters in dart could also be required
//which means call site always has to pass a value for that paramter

void main(List<String> args) {
  doSomethingWith(name: 'Srijan'); //Hello Srijan
  // doSomethingWith(name: null);//invalid code
  // doSomethingWith();//invalid code

  doSomeSomething(name: 'Srijan'); //Hello Srijan
  doSomeSomething(name: null); //Hello null
  // doSomeSomething();//invalid code
}

void doSomethingWith({
  required String name,
}) {
  print('Hello $name');
}

void doSomeSomething({
  //now null can be passed
  required String? name,
}) {
  print('Hello $name');
}
