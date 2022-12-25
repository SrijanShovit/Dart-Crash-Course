//return keyword

void main(List<String> args) {
  print(add()); //3
  print(add(3)); //5
  print(add(1, 2)); //3
}

int add([
  int a = 1,
  int b = 2,
]) {
  return a + b;
}
