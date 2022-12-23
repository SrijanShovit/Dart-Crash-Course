void main(List<String> args) {
  Dog(isTired: false).run(); //Doggo is running

  try {
    Dog(isTired: true).run();
  } catch (e, stackTrace) {
    print(e); //Poor doggy is tired

    print(stackTrace);
    /*
    Instance of 'DogIsTiredException'
#0      Dog.run (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example7.dart:26:7)
#1      main (file:///e:/DartCrashCourse/errors_and_exceptions/bin/example7.dart:5:24)
#2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)
     */
  }
}

class DogIsTiredException implements Exception {
  final String message;
  DogIsTiredException([this.message = 'Poor doggy is tired']);
}

class Dog {
  final bool isTired;

  const Dog({
    required this.isTired,
  });

  void run() {
    if (isTired) {
      throw DogIsTiredException('Poor doggo is tired');
    } else {
      print('Doggo is running');
    }
  }
}
