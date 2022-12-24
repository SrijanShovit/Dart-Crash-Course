//We want a function to return either an int or a double
//But doing like the down ex is not concise

void main(List<String> args) {
  // final double doubleValue = eitherIntOrDouble(WhatToReturn.double);

  //value retuned is fine but type is num not double
  // print(doubleValue); //1.0

  // so we could do type casting
  final double doubleValue2 = eitherIntOrDouble(WhatToReturn.double) as double;

  final int intValue = eitherIntOrDouble(WhatToReturn.int) as int;
}

enum WhatToReturn { int, double }

num eitherIntOrDouble(WhatToReturn whatToReturn) {
  switch (whatToReturn) {
    case WhatToReturn.int:
      return 1;
    case WhatToReturn.double:
      return 1.0;
    default:
      throw Exception('Unknown Type');
  }
}
