void main(List<String> args) {
  const double a = 64.1;
  const double b = 30.2;
  const double div1 = a / b;
  // const var = dr/nr(if any of nr or dr is non-const it is not allowed)
  print(div1); //2.122516556291391
  const int div2 = a ~/ b;
  print(div2); //2
}
