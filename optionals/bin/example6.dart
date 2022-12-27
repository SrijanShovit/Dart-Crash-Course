//! forces a nullable value to unwrap but this unsafe and causes your program to crash

void main(List<String> args) {
  // final String? firstName; //not good to use
  final String? firstName =
      null; //good to use although both are initialised to null

  print(firstName);

  try {
    final foo =
        firstName!; //i don't care what is the content of firstName, I would read it so if it is null program will crash
    print(foo);
  } catch (e) {
    print(e); //Null check operator used on a null value
  }

  // so ! is very dangerous bcz we are risking ourselves to be 50% program crash
  //as we want only to read names
  print(firstName ?? 'No names found');
}
