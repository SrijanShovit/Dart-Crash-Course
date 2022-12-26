//Futures are pieces of functionality that will complete their work in future

//when normal function is called the application stops executing the caller function and jumps to the called function

//but if the called function returns future,the caller function will continue its execution
//It doesn't care when that future ends unless u ask the app to wait for the result
//that is await
void main(List<String> args) async {
  print(getUserName());
  //doesn't simple return the String
  //rather it returns Instance of 'Future<String>'

  //so in order to consume the Future value
  //we need await that dissolves/resolves the Future and gets the value to consume it

  // but to use await we need to have async function inside which await keyword is used

  print(await getUserName2()); //John Doe

  print(await getAddress()); //123 Main St.

  print(await getPhoneNumber()); //555-555-5555

  print(await getCity()); //New York

  print(await getZipcode()); //800001
}

//Different ways to mark a function future:
//M-1
//write normal function just turn it into async
//but not usual way
Future<String> getUserName() async {
  //can do some async calculation here
  return "John Doe";
}

//M-1.1
//just return value
Future<String> getUserName2() async => 'John Doe';

//M-2:
//return Future value w/o using async
Future<String> getAddress() => Future.value('123 Main St.');

//M-2.2
//we do some computation after some delay
Future<String> getPhoneNumber() => Future<String>.delayed(
      const Duration(seconds: 5),
      () => '555-555-5555',
    );

//M-3:
Future<String> getCity() async {
  // a future that doesn't produce a value
  // Future.delayed(const Duration(seconds: 2));
  //we have a future here but no one is waiting for it

  //in order to enforce waiting and getting final value of future (not just value containing that function) we have to use await
  await Future.delayed(const Duration(seconds: 2));

  return 'New York';
}

//M-4:
// async is placed to return raw value of Future<String> or within the function,use await keyword
//But here none is brought to use so async is just of no use
//async keyword in the below ex doesn't really contribute with anything
Future<String> getZipcode() async => Future.delayed(
      const Duration(seconds: 3),
      () => '800001',
    );
