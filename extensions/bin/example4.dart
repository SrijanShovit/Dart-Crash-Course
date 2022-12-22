//dart doesn't has the ability to create range like Python,Rust

void main(List<String> args) {
  print(1.to(10));
//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  print(1.to(10, inclusive: false));
  //[1, 2, 3, 4, 5, 6, 7, 8, 9]

  print(10.to(1));
  //[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

  print(10.to(1, inclusive: false));
  //[10, 9, 8, 7, 6, 5, 4, 3, 2]

  print(10.to(10));
  //[10]

  print(10.to(10, inclusive: false)); //[]
}

extension on int {
  Iterable<int> to(int end, {bool inclusive = true}) =>
      //check if end is more than provided value
      end > this
          ?
          //list comprehension
          [for (var i = this; i < end; i++) i, if (inclusive) end]
          : [for (var i = this; i > end; i--) i, if (inclusive) end];
}
