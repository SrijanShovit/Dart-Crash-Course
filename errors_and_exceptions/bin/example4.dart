void main(List<String> args) async {
  final db = Database();
  try {
    // await db.open();

    String result = await db.getData();
    print(result);

    // await db.close();
  } on DatabaseNotOpenException {
    print('Company ka database band hai abhi');
  }

  //although we might write cleanup code in try block but if there is an excpetion thrown befire cleanup we never come back to clean which might be needed to free up resources; so finally is used
  //this is always executed right after try..catch
   finally {
    await db.close();
  }
}

//making connection to a fictious database
class Database {
  bool _isDbOpen = false;

  Future<void> open() {
    return Future.delayed(Duration(seconds: 2), () {
      _isDbOpen = true;
      print('Database opened after 2 sec delay');
    });
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    }
    //no general need for else block
    return Future.delayed(
        Duration(seconds: 1), () => 'Data returned after 1 sec delay');
  }

  Future<void> close() {
    return Future.delayed(Duration(seconds: 3), () {
      _isDbOpen = false;
      print('Database closed after 1 sec delay');
    });
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNotOpenException';
}


/*
OP:

If we call database.open() before getData() then we get the following output:
Database opened after 2 sec delay
Data returned after 1 sec delay
Database closed after 1 sec delay

else:
Company ka database band hai abhi
 */