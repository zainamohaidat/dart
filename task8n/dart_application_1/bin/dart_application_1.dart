import 'dart:io';

class Person {
  String? firstName;
  String? lastName;
  Person(); //defult
  Person.named() {
    print("named");
  }
  Person.named1({required firstName, required lastName}) {
    print("named1");
  }
  Person.named2([firstName = "zaina", lastName = "mohidat"]) {
    print("named2");
  }

  void getfirstName() => firstName;
  void getlastName() => lastName;
}

class Employee extends Person {
  int? id;
  Employee();
  Employee.named() {
    print("employee named");
  }
  Employee.named2({required id}) {
    print("empoyee req");
  }
  Employee.named3([id = 123]) {
    print("id");
  }
  int? getEmployeeId() => id;

  void getlastName() {
    print("employee last name");
    super.getlastName();
  }
}

class hremployee extends Employee {
  double? salary;
  hremployee();
  hremployee.named() {
    print("hr employee");
  }
  hremployee.named2({required salary}) {
    print("hr req parameter");
  }
  hremployee.named3([salary = 230]) {
    print("hr employee salary");
  }

  void getlastName() {
    print("last name hr employee");
    super.getlastName();
  }
}

void main(List<String> arguments) {
  hremployee hr = hremployee();
  hr.getlastName();
  hr.getEmployeeId();
}
