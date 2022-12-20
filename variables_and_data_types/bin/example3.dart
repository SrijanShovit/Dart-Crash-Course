void main(List<String> args) {
  //normal variables that are mutable
  var address = '0x7239792397djhk';
  print(address); //0x7239792397djhk
  address = '0xijf32u083';
  print(address); //0xijf32u083
  address = address.replaceAll('0x', 'H'); //Hijf32u083
  print(address);
}
