//Extension to reverse a string

void main(List<String> args) {
  print('Hello'.reversed); //olleH
}

extension on String {
  String get reversed => split('').reversed.join();
}
