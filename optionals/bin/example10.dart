void main(List<String> args) {
  print(getFullName('Rajni', 'Gandha', null)); //Please provide complete name

  print(getFullName('Mahendra', 'Singh', 'Dhoni')); //Mahendra Singh Dhoni
}

//T is any generic type
//return optionally

//given a list of optional values ,return their concatenation if none of them is null
//but checking each one of them to be not null is hectic
T? withAll<T>(
  List<T?> optionals,
  //takes a list of non-optional Function
  T? Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());

//if anyone is null return null else cast the values in callback and return

//Ex:
String? withAllString(
  List<String?> optionals,
  String? Function(List<String>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<String>());

String getFullName(
  String? firstName,
  String? middleName,
  String? lastName,
) =>
    withAll(
        [firstName, middleName, lastName],
        //if none of these values are null they are returned as names and then joined
        (names) => names.join(' ')) ??

    //else appropriate message provided
    'Please provide complete name';
