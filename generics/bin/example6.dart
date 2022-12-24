//Force json to have all values of same type

void main(List<String> args) {
  const JSON<int> json = {
    // 'name': 'John', // see we get erro here
    'age': 30,
  };
}

typedef JSON<T> = Map<String, T>;
