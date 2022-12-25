//+ 2 maps(merge maps)
/*
{'name' : 'John','age':42} + {'address' : '123 main st.'}
{'name' : 'John','age':42} - {'age' : 42}
{'name' : 'John','age':42} * 3
 */

void main(List<String> args) {
  print({'name': 'John', 'age': 42} +
      {
        'address': '123 main st.'
      }); //{name: John, age: 42, address: 123 main st.}

  print({'name': 'John', 'age': 42} - {'age': 42}); //{name: John}

  print({'name': 'John', 'age': 42} *
      3); //({name: John, age: 42}, {name: John, age: 42}, {name: John, age: 42})
}

extension MapOperation<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {
        //spreading both maps in 1 map
        ...this,
        ...other,
      };

  Map<K, V> operator -(Map<K, V> other) {
    // ...this = {'name' : 'John','age':42}
    return {...this}
      //remove items
      ..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
