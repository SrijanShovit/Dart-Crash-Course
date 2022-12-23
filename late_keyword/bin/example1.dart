//late varibales are initialised when they are used for the first time

late String
    name; //it tells dart this variable is going to have a value for sure but I'm not gonaa assign it now

void main(List<String> args) {
  try {
    //catching error is not good practice bcz when we ensure dart it will have value before we use it but we are not doing so

    print(name); //it gives LateInitializationError Exception
  } catch (e) {
    print(e);
  }

  name = 'Foo Bar';
  print(name); //Foo Bar

  name = 'Foo Bar2';
  print(name); //Foo Bar2
}
