//assigning late variable to a non-late variable resolves late variable immediately

//otherwise it is resolved lazily
//dart compiler puchega kya hai teri value
//bhai pata nhi abhi;depend krta hai unke pe
//bhai teri kya hai value; pata nhi bhai;batate hain baad mein

void main(List<String> args) {
  print('late fullName is being initialised');
  late final fullName =
      getFullName(); //are bhia ye late hai; iska abhi function call nhi krenge
  print('after');
  print(fullName);
}

String getFullName() {
  print('getFullName() is called');
  return 'John Doe';
}

/*
OP:
late fullName is being initialised
after
getFullName() is called
John Doe
 */
