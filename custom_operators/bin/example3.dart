//create operator between 2 optional integers
void main(List<String> args) {
  print(add()); //0
  print(add(10, null)); //10
  print(add(null, 20)); //20
  print(add(10, 20)); //Stack overflow
}

//directly not done in main bcz dart starts complaining due to static analysis; so overcome that
int add([int? a, int? b]) {
  return a + b;
}

//we want to create + operator on optional integers
//we use shadowing in optional extensions
extension NullableAdd<T extends num> on T? {
  //both lhs and rhs should be of same type
  T operator +(T? other) {
    if (this != null && other == null) {
      return this as T;
    } else if (this == null && other != null) {
      return other;
    } else if (this == null && other == null) {
      return 0 as T;
    } else {
      //stack overflow bcz '+' sign goes back to its definition infintely so it is fixed with shadow

      //this shows that dart itself couldn't promote this to non-null value although it is the last branch
      return (this + other) as T;
    }
  }
}
