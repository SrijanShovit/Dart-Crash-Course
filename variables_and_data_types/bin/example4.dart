void main(List<String> args) {
  // String name =
  // 123; //Here we already told data type is String so dart doesn't accept 123

  String name = 'Foo';

  var address =
      ''; //Here, we didn't tell about data type so assigning 123 is not an issue

  address = name;
  print(address);
  print(name);

  //assigning a variable of 1 type to a variable of another type isn't allowed
}
