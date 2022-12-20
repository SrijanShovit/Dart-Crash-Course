//Inspiration from Rust and Swift

//FlatMap : It is used to drill down an optional, and cast it to same or different data type provided it is not null
//Else it will return null
void main(List<String> args) {
  String? firstName = 'John';
  String? lastName = null;

  final fullName = firstName.flatMap(
        (f) => lastName.flatMap((l) => '$f $l'),
      ) ??
      'Either first or last name or both are null';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      //dart isn't able to resolve this is nullable so it is assigned to another variable called shadow
      return callback(shadow);
    }
  }
}
