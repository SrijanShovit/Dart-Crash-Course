void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue); //1.1
  final int intValue = eitherIntOrDouble();
  print(intValue); //1

  //we see that doubleValue suddenly gets resolved to double from num
  //What happens is that if the call site asks for double that SOMETHING is replaced with double
}

//So it is better to tell dart compiler that
//this function returns something
//That something is of num type

SOMETHING eitherIntOrDouble<SOMETHING extends num>() {
  switch (SOMETHING) {
    case int:
      //here type casting needed bcz we expect to return type SOMETHING but we strictly return int
      //we should not specify it
      //int or double will be wrapped in SOMETHING
      //not our headache
      return 1 as SOMETHING;
    case double:
      return 1.1 as SOMETHING;
    default:
      throw Exception('Unknown Type');
  }
}

/*
Now in practice generic type are just given by 1 letter
T for type
E for element


T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('Unknown Type');
  }
}
 */
