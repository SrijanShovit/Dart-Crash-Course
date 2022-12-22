import 'dart:math' show Random;
//mix extensions with type definition

//calling a function on function with random values

void main(List<String> args) {
  print(add.callWithRandomValues());
  print(subtract.callWithRandomValues());
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValues() {
    final rnd1 = Random().nextInt(100);
    final rnd2 = Random().nextInt(100);
    print('Random values = $rnd1, $rnd2');
    return call(rnd1, rnd2);
  }
}

/*
OP:
Random values = 75, 65
140
Random values = 0, 7
-7
 */
