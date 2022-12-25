//required named paramters cannot have a default value
//beacause if we always have to pass value bcz of required,there is not point of keeping default value as it will always be overwritten

void main(List<String> args) {
  doSomethingWithAge(age: 41); //In 2 years,you will be in 43 years old
  doSomethingWithAge(age: null); //You have not told your age
}

void doSomethingWithAge({
  // required int? age = 20//invalid
  required int? age,
}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years,you will be in $in2Years years old');
  } else {
    print('You have not told your age');
  }
}
