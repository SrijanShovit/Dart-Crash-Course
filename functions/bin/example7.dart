void main(List<String> args) {
  doSomething(); //Hello Bar
  // doSomething(name: null);//not allowed now
  doSomething(name: 'Bob'); //Hello Bob
}

void doSomething({
  String name = 'Bar',
}) {
  print('Hello $name');
}
