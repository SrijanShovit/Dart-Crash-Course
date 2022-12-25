//late variable used anyways
//be it just accessing
//or be it assigning to a non-late varibale
//resolves it right then

void main(List<String> args) {
  print('late fullName is being initialised');
  late final fullName = getFullName();
  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

String getFullName() {
  print('getFullName() is called');
  return 'Johnny';
}

/**
OP:
late fullName is being initialised
getFullName() is called
resolvedFullName = Johnny
 */