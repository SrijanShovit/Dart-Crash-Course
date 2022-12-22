//contain an extension on iterable to tell if that iterable contains duplicates

void main(List<String> args) {
  print([1, 2, 3, 1].containsDuplicateValues); //true
  print(["Foo", "Bar"].containsDuplicateValues); //false
  print(["Foo", "Bar", 'foo'].containsDuplicateValues); //false
  print([1, 2, 3.15].containsDuplicateValues); //false
}

extension on Iterable {
  //convert iterable to set and check if length of set is same as length of original iterable
  bool get containsDuplicateValues => toSet().length != length;
}
