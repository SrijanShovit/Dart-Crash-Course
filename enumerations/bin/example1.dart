//Enumerations allow us to create similar objects in 1 structure!!

void main(List<String> args) {
  final woof = Animal(name: 'woof', type: AnimalType.dog);

  if (woof.type == AnimalType.cat) {
    print('woof is a cat');
  } else {
    print('woof is not a cat');
  }
  //woof is not a cat

  //better to use switch case than if else
  //if we add new value in enum switch code will break and give us warnings
  switch (woof.type) {
    case AnimalType.cat:
      print('woof is a cat');
      break;
    case AnimalType.dog:
      print('woof is a dog');
      break;
    case AnimalType.rabbit:
      print('woof is a rabbit');
      break;
  }
  //woof is a dog
}

enum AnimalType {
  cat,
  dog,
  rabbit,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({
    required this.name,
    required this.type,
  });
}
