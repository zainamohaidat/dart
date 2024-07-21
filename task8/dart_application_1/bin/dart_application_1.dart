class Person {
  String? _lastName = "zaina";
  String getLastName() => "$_lastName (Employee)";
}

void main(List<String> args) {
  Person p = Person();
  print(p.getLastName());
}
