//about some data types

void main(List<String> args) {
  const dynamic someNull = null;
  print(someNull); //null

  const Symbol someSymbol = #someNull;
  print(someSymbol); //Symbol("someNull")
}
