//Create an extension on map to find first and to convert values of a given type

const json = {'name': 'Foo Bar', 'age': 20};

void main(List<String> args) {
  final String? ageAsString = json.find<int>(
    'age',
    (int age) => age.toString(),
  );
  print(ageAsString); //20

  final String? hiName = json.find<String>(
    'name',
    (String name) => 'Hi, $name',
  );
  print(hiName); //Hi, Foo Bar

  final String? myAddress =
      json.find('address', (String address) => 'You live at $address');
  print('address : $myAddress'); //address : null
}

extension Find<K, V, R> on Map<K, V> {
  // make R optional beacuse we might not be able to find the key
  R? find<T>(
    K key,
    R? Function(T value) myCast,
  ) {
    final value = this[key];
    //if key exists and value is of type T asked for
    if (value != null && value is T) {
      return myCast(value as T);
    } else {
      return null;
    }
  }
}
