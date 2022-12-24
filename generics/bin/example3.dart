//Write a function that takes 2 values of any data type and return true if they are of same type

void main(List<String> args) {
  print(doTypesMatch(1, 2)); //true
  print(doTypesMatch(1, 2.2)); //false
  print(doTypesMatch(1, 'Foo')); //false
  print(doTypesMatch('Foo', 'Bar')); //true
}

// bool doTypesMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

//same thing can be done using generics
//this function expects 2 generic types
// bool doTypesMatch<TYPE1, TYPE2>(TYPE1 a, TYPE2 b) => TYPE1 == TYPE2;

//better write as
//L for left, R for right
bool doTypesMatch<L, R>(L a, R b) => L == R;
//se how compact the code becomes
