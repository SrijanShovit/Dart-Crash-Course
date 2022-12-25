//functions can become arrow functions to omit return keyword

void main(List<String> args) {
  print(minus()); //5
  print(minus(16)); //11
  print(minus(30, 20)); //10

  print(performOperation(10, 20, (a, b) => a + b)); //30
  print(performOperation(10, 20, (a, b) => a - b)); //-10

  //OR
  //The thing below is actually called first class citizens
  print(performOperation(
    10,
    20,
    add,
  )); //30
  print(performOperation(
    10,
    20,
    minus,
  )); //-10
}

int performOperation(
  int a,
  int b,
  //Function as a parameter
  //we give return type and data type Function(int,int) and give name to the paramter
  int Function(int, int) operation,
) =>
    //result of calling this function is to return operation of a,b
    operation(a, b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 1, int rhs = 2]) => lhs + rhs;

//function is described as a datatype
///int minus([int lhs = 10, int rhs = 5])
// Type: int Function([int, int])
//Anything that has a datatype can be passed to a function
//That's why we can pass a function to another function
