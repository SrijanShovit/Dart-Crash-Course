//assigning a value of less precision to a variable of more precision

void main(List<String> args) {
  final double hisAge = 30;
  print(hisAge);

  final int herAge = 40.5 as int; //this is not allowed directly
  print(herAge);
}
