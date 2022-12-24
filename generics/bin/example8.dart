//Going to create a generic class with generic extensions on that class

void main(List<String> args) {
  const tuple = Tuple(1, 20.2); //type is Tuple<int, int>
  print(tuple); //Tuple , left = 1,right = 20

  final swapped =
      tuple.swap(); //however returned type is Tuple<dynamic, dynamic>
  //on using generics dart resolves the type
  print(swapped); //Tuple , left = 20,right = 1

  print(tuple.sum); //21.2
  print(swapped.sum); //21.2
}

class Tuple<L, R> {
  final L left;
  final R right;
  const Tuple(this.left, this.right);

  @override
  String toString() => 'Tuple , left = $left,right = $right';
}

//create a extension on that tuple such that create a new tuple by swapping these tuples

// extension on Tuple {
//   Tuple swap() => Tuple(right, left);
// }

//Better way out :
extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
