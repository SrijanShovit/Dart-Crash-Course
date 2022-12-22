//extension to sum elements of an array

void main(List<String> args) {
  final sumOfIntegers = [1, 2, 3].sum;
  final sumOfDoubles = [2.2, 3.6, 8].sum;

  print(sumOfDoubles.runtimeType); //double
  print(sumOfIntegers.runtimeType); //int
  print(sumOfDoubles); //13.8
  print(sumOfIntegers); //6
}

//num used so as to use on both int and double
extension SumOfIterable<T extends num> on Iterable<T> {
  //we are getting num but due to return type num there we cannot know which num
  //so we should return proper data type using generics

  //but using on Iterable<T> only breaks num rule so extens T from num , give it a name then proceed

  T get sum => reduce((a, b) => a + b as T);
  //adding a and b as same type after reducing the iterable
}
