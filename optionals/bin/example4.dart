//Dart doesn't directly allow use of properties of non-nullable variables to nullable variables

void main(List<String> args) {
  String? name;
  // print(name.length); //null.length not allowed

  //To use the properties null-aware operators are used(?.) in property
  print(name?.length); //null
  name = 'Srijan';
  print(name
      ?.length); //6 ; warning given that null=aware operator used in unnecessary

  /// ??  ; it takes value of RHS and uses it only if LHS is null
  name = null;
  print(name ?? 'Shovit'); //Shovit
  print(name); //null ; no change to name variable

  final bla = name ??
      'Foo'; //dart resolves that bla comes out to be of type string and not optional string ; if both sides were nullable Strings then there could not have been a resolution

  //null-aware operators chan also be chained
  String? lastName;
  String? nullName;
  print(lastName ?? nullName ?? 'Shovit'); //Shovit

  nullName = 'Null String';
  print(lastName ?? nullName ?? 'Shovit'); //Null String
}
