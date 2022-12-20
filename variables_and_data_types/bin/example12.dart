void main(List<String> args) {
  const String yourName = 'FooBar';
  final hisName =
      yourName; //dart linter shows problem beacuse of configuration done in analysis...yaml

  print(yourName); //FooBar
  print(hisName); //FooBar
}
