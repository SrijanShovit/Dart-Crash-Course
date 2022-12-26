//optionals with default values

void main(List<String> args) {
  print(fullName(null, null)); //_ _
  print(fullName('John', null)); //John _
  print(fullName(null, 'Smith')); //_ Smith
  print(fullName('John', 'Smith')); //John Smith
}

String fullName(
  String? firstName,
  String? lastName,
) =>
    '${firstName.orDefault} ${lastName.orDefault}';

//extension on any data type as long as it is optional
extension DefaultValues<T> on T? {
  //always return a non-optional
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    //otherwise we will use Switch as per data type
    switch (T) {
      case String:
        return '_' as T;
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  }
}
