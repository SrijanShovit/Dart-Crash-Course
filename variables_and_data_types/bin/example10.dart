void main(List<String> args) {
  //late values are initialised only when they are used
  late final myValue = 10;
  print(myValue);

  late final yourValue = getValue();
  print('We are here');
  print(yourValue);
}

int getValue() {
  print('getValue called');
  return 10;
}

/**
Expectations:
10
getValue called
We are here
10

Output:
10
We are here
getValue called
10
 */
