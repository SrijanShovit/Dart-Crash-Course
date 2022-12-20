void main(List<String> args) {
  List<String?>? names;
  //the list may conain something or not
  //the list may also contain string or null as elements

  //all of these are acceptable
  names = null;
  print(names); //null
  // names.add('Foo');//not allowed

  names?.add('Foo'); //ok
  print(names); //null ; since list doesn't exist no append effect

  names = [];
  print(names); //[]
  names?.add('Foo');
  print(names); //[Foo] ; since list exists append effect visible

  names.add(null); //ok
  print(names); //[null]

  // names?.add('Foo'); //not needed
  names = ['John', 'Doe'];
  print(names); //[John, Doe]

  names = ['John', null, 'Doe'];
  print(names); // [John, null, Doe]

  //getting 1st name in the list
  final first = names?.first;
  //I don't know if names is null or not then how can dart assume first to ne of type String? -- a bug

  //ex. how our app might get crashed
  List<String> names2 = [];
  final bla = names2.first;

  ///Unhandled exception:
  ///Bad state: No element
}
