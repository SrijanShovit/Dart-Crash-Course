//future chaining
//a future calculates a value and that value is fed to another future that consumes that value

void main(List<String> args) async {
  //feed the value of getFullName to calculateLength
  //calculateLength accepts String but Future<String> is return so we give await with it

  //M-1:
  final length = await calculateLength(await getFullName());
  print(length); //8 (after 2 seconds)

  //M-2:
  //getFullName ; then value returned by it is given to calculateLength
  //no await there as it is resolved by then
  //at the outmost side, await given
  final length2 = await getFullName().then(
    (value) => calculateLength(value),
  );
  print(length2); //8
}

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'John Doe',
    );

Future<int> calculateLength(String value) => Future.delayed(
      const Duration(seconds: 1),
      () => value.length,
    );
