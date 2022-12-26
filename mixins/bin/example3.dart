//just like mixins can have properties
//they can have functions as well

void main(List<String> args) {
  final bhangadBilla = Cat(age: 2);
  print(bhangadBilla.age); //2

  print("One yr passed");
  bhangadBilla.incrementAge();
  print(bhangadBilla.age); //3
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;
  Cat({required this.age});
}


/**
We cannot have a const ctr bcz Cat class which 
confirms to HasAge mixin has one of the function that changes the state of instance internally
also that's why did not specify age as getter
rather left it abstract
 */