void main(List<String> args) {
  //final allows internal change
  //but no new assignment
  final age = [1, 2, 3];
  print(age);
  age.removeAt(0);
  print(age);
  // age = [1, 2, 3]; //compile error
}
