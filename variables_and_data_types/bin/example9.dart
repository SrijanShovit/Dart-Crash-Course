void main(List<String> args) {
  const thisList = [1, 2, 3];
  final thatList = thisList;
  print(thatList); //[1, 2, 3]
  print(thisList); //[1, 2, 3]
  // const someList = thatList;//syntax error
}
