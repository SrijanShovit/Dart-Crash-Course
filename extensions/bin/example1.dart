//Extensions is used to extend functionality of existing classes
//ex. instead of doing i*4 we will like i.fourTimes getter function

void main(List<String> args) {
  final value = 20;
  final timesFour = value.timesFour;
  print(timesFour); //80
  print(34.timesFour); //136
}

extension on int {
  //this keyword here returns an instance to the value on which we are operating
  int get timesFour => this * 4;
}
