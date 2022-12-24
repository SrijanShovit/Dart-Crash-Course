void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };

  const brotherAndSisterAndMyFish = {
    'brother': Person(),
    'sister': Person(),
    'fishy': Fish(),
  };

  //We want a function to pass an iterable of the above maps
  final allValues = [momAndDad, brotherAndSisterAndMyFish];
  //if we remove fish,dart resolves allValues of type List<Map<String, Person>>
  //but as we add Fish it is resolved as List<Map<String, CanBreathe>>

  //call breathe function on all values
  describe(allValues);
}

//M-1
// typedef BreathingThings = Map<String, CanBreathe>; OR
//M-2:
typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();
  @override
  void breathe() {
    print("Person is breathing...");
  }
}

class Fish with CanBreathe {
  const Fish();
  @override
  void breathe() {
    print("Fish is breathing...");
  }
}

/*
OP:

Will call breathe() on mom
Person is breathing...
Will call breathe() on dad
Person is breathing...
Will call breathe() on brother
Person is breathing...
Will call breathe() on sister
Person is breathing...
Will call breathe() on fishy
Fish is breathing...
 */
