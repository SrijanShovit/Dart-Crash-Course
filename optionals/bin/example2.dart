void main(List<String> args) {
  //both null and int are allowed due to ?
  int? age = 30;

  //dart already sees that int is taken so no sense of comparing with null
  if (age == null) {
    print("Age is null");
  }
  age = null;
  //Dart sees it is null so no complaints
  if (age == null) {
    print("Age is null");
  }
}

//if we make a function of the same thing,dart in compile time doesn't know if it accepts null or int so no complaint
void something(int? age) {
  if (age == null) {
    print("Age is null");
  } else {
    print("Age is $age");
  }
}
