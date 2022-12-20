void main(List<String> args) {
  String? getFirstNameOptional() {
    //both allowed; returning a string is not guaranteed
    return 'Srijan';
    // return null;
  }

  String getLastName() {
    //here,returning a string is guaranteed
    return 'Shovit';
  }

  //name is guranteed to have a string
  final String name = getFirstNameOptional() ?? getLastName();

  print(name); //Shovit

  final someName = getFirstNameOptional();
  someName.describe();
  //null OR
  //String: Srijan
}

//create a function to describe an optional value
extension Describe on Object? {
  //since ? is on extension we can use describe directly with someName
  //else we would have had to write someName?.describe()

  void describe() {
    if (this == null) {
      print('null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
