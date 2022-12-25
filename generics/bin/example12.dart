void main(List<String> args) {
  const integers = [100, 5, 2];
  const doubles = [33.0, 3, 2.0];
  //takes 100/5 then 20/2
  //takes 33.0/3 then 11.0/2.0
  print(integers.reduce(divide)); //10
  print(doubles.reduce(divide)); //5.5
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  } else {
    return lhs / rhs as T;
  }
}
