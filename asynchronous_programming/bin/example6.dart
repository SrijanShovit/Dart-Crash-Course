//Stream.reduce() --> will give us current and previous value of streaam and allow us to do some operation on it

//We want to get sum of all ages

void main(List<String> args) async {
  //M-1:
  int sum = 0;
  await for (final age in getAllAges()) {
    sum += age;
  }
  print(sum); //150

  //M-2:
  final sum2 = await getAllAges().reduce((num1, num2) => num1 + num2);
  print(sum2); //150
}

Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}
