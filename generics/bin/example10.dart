//sometimes generic extensions can't have generic types bcz the type we need to work on may not have common anestors
//create a function ToInt that converts any object to integer if it can

//basically sum up all integers if it is iterable

///1 -> 1
///1.2 -> 1
///[1,2,3] -> 6
///they have no common ancestor except Object

void main(List<String> args) {
  print(1.toInt() == 1);
  print((2.2).toInt() == 2);
  print((2.0).toInt() == 2);
  print('3'.toInt() == 3);
  print(['4', '5'].toInt() == 9);
  print([4, 5].toInt() == 9);
  print(['2.4', '3.5'].toInt() == 6);
  print({'2', 3, '4.2'}.toInt() == 9);
  print(['2', 3, '4.2', 5.3].toInt() == 14);
}

extension ToInt on Object {
  int toInt() {
    final list = [
      //if the received item is iterable of object
      //then spread it in list
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        //if int then take it and put inside array
        [this as int]

      //for any other data type try parsing to double or use 0.0 then round off
      else
        (double.tryParse(toString()) ?? 0.0).round()
    ];
    //map the elements
    //we want an iterable of int after parsing to double then rounding

    print(list);
    //list contains num type
    return list
        .map(
          (e) => (double.tryParse(
                    e.toString(),
                  ) ??
                  0.0)
              .round(),
        )
        .reduce(
          (lhs, rhs) => lhs + rhs,
        );
    //now reduce these int values
  }
}
