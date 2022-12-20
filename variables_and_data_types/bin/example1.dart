void main(List<String> args) {
  print("Hello");
  const name = 'Foo';
  print(name);
  // name = 'Hello';
  //No modification is allowed in a constant (neither internally nor assign a new value)

  const nums = [1, 2, 3];
  nums.removeAt(0); //gives exception that internal change not allowed
}
