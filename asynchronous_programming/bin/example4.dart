///Future : (starts) ---------waits for 1 secs(eg) -------------[produces one value] (stops)

///stream is a mixture of anything with waiting and values
///Stream : (starts) -----waits for 1 secs---[produces 1 value]-----waits for 1 secs----[produces 3 values]-----waits for 2 secs----[produces 1 value] (stops)

void main(List<String> args) async {
//streams are consumed by await for
  await for (final number in getNumbers()) {
    print(number); //one by one all numbers are printed with 1 sec delay
  }

  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }

  /**
  John
  Exception: Something went wrong
   */
}

// function that returns Stream(kind of like Future but can return many values)
//M-1: mark the function as async
Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      //delay for 1 sec in every iteration
      const Duration(seconds: 1),
    );
    yield i; //yield the value(inject) to the stream
  }
}

///So the stream will look like:
///  | (1 sec delay ) 0 (1 sec delay) 1 (1 sec delay) 2 (1 sec delay ) 3 (1 sec delay ) 4 (1 sec delay ) 5 (1 sec delay ) 6 (1 sec delay ) 7 (1 sec delay ) 8 (1 sec delay ) 9 |

//Stream with an excpetion
Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
}


//await for cannot be used on Future
//for is used for looping in multiple values;not just single value