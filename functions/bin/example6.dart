//optional paramter with deafult value

void main(List<String> args) {
  describe(); //if you don't pass a value to this functional default value will be taken

  describe(
      something:
          null); //having default value doesn't mean that you can't pass null
  describe(something: 'Hello, Dart!');
}

void describe({
  //if you don't want to allow null to be passed make it String instead of String?
  String? something = 'Hello, Flutter!',
}) {
  print(something);
}

/*
OP:
Hello, Flutter!
null
Hello, Dart!
 */
