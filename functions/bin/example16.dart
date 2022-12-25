//Return functions from functions maybe required in functional programming in dart

void main(List<String> args) {
  final func = doSomething(10, 15); //func is a Function here that we can call
  print(func()); //25

  //OR we can call it
  print(doSomething(10, 76)()); //86
}

//we want to return a function that adds two numbers
//return type of this function is a function that in turn,returns an int
int Function() doSomething(
  int lhs,
  int rhs,
) =>
//we return a function that adds these values
    () => lhs + rhs;
