void main(List<String> args) {
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  final foo =
      lastName; //dart doesn't unsertand if it's null or not after the method

  //true/false/null
  if (lastName?.contains('Bar') ?? false) {
    print('lastName contains Bar'); //lastName contains Bar
  }

  if (lastName?.contains('Bar') == true) {
    print('lastName contains Bar'); //lastName contains Bar
  }
}
