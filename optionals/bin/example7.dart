//we are type a nullable value to non-nullable value by checking if it's null or not

void main(List<String> args) {
  final String? firstName = null;
  final length = firstName?.length; //?.required here
  if (firstName == null) {
    print("firstName value is null");
  } else {
    final length2 = firstName
        ?.length; //here ? not needed beacuse we are already segregated if with condition
  }
}
