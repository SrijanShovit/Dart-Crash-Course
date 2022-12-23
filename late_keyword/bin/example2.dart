//The resolution of values in the variables takes place only when variables are used.

void main(List<String> args) {
  print("Before");
  late String name = provideName();
  print("After");
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}


/**
OP:
Before
After

We assign something to our late varibale but bcz it is not used the assignment
 */