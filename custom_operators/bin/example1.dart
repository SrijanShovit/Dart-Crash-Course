//input is where u create yr operator on
//output is instance of class

void main(List<String> args) {
  final dad = FamilyMember(name: 'Dad');
  final mom = FamilyMember(name: 'Mommy');
  final myFamily = dad + mom;
  print(
      myFamily); //Family (members = [Family member (name = Dad), Family member (name = Mommy)])
}

class FamilyMember {
  final String name;
  const FamilyMember({
    required this.name,
  });

  @override
  String toString() => 'Family member (name = $name)';
}

class Family {
  final List<FamilyMember> members;
  const Family({
    required this.members,
  });
  @override
  String toString() => 'Family (members = $members)';
}

extension ToFamily on FamilyMember {
  //treat operator + as a function
  //returns an instance of Family
  //one argument is "this" pointing to instance of FamilyMember
  //other instance is passed in parameter

  //used as member1 + member2
  Family operator +(FamilyMember other) =>
      //it creates an instance of family
      Family(
        members: [this, other],
      );
}
