//Stream.asyncExpand() produces a new stream everytime we get a value from one stream

void main(List<String> args) async {
  await for (final character in getNames().asyncExpand(
    //everytime stream is returned from getNames, take that value and pass to given function
    (name) => getCharacters(name),
  )) {
    print(character);
  }

  //The final stream is like:
  ///| (300 ms) (200 ms) J (200 ms) o (200 ms) h (200 ms) n (300 ms) (200 ms) D (200 ms) o (200 ms) e |
}

//this function will take a string and yield every character of it as a String
/// eg: Hello
/// | (300 ms wait) "H" (300 ms wait) "e" (300 ms wait) "l" (300 ms wait) "l" (300 ms wait) "o" |

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async*
//* allows to use yield keyword
//no important role in producing a stream
{
  await Future.delayed(Duration(milliseconds: 200));
  yield "John";
  await Future.delayed(Duration(milliseconds: 200));
  yield "Doe";
}
