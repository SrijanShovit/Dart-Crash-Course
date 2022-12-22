//extension on enum

void main(List<String> args) {
  print(AnimalType.cat.nameContainsUpperCaseLetters); // false
  print(AnimalType.dog.nameContainsUpperCaseLetters); //false
  print(AnimalType.goldFish.nameContainsUpperCaseLetters); //true
}

enum AnimalType { cat, dog, goldFish }

extension on Enum {
  bool get nameContainsUpperCaseLetters {
    print(name); // it is the enum item (eg. cat,dog)
    return name.contains(RegExp(r'[A-Z]') // r for raw string
        );
  }
}
