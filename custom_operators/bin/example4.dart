//'Foo Bar Foo Bar Baz Foo' - 'Foo' = 'Bar Bar Baz'

void main(List<String> args) {
  print('Foo Bar' - 'Foo'); //  Bar
  print('Bar' - 'Bar'); //
  print('Foo Bar' - 'Baz'); //Foo Bar
}

extension Remove on String {
  String operator -(String other) => replaceAll(
        other,
        '',
      );
}
