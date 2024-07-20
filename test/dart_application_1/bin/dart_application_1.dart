import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');
}
class Person {
  String? _firstName;
  String? _lastName;

  Person({this._firstName, this._lastName});

  Person.withNames(this._firstName, this._lastName);

  Person.firstName(String firstName) : this._firstName = firstName, _lastName = "";

  Person.lastName(String lastName) : this._firstName = "", _lastName = lastName;

  String getFirstName() => _firstName ?? "";

  String getLastName() => _lastName ?? "";
}

class Employee extends Person {
  int? _employeeId;

  Employee({String? firstName, String? lastName, int? employeeId})
      : super(firstName: firstName, lastName: lastName),
        _employeeId = employeeId;

  Employee.withNamesAndId(String firstName, String lastName, int employeeId)
      : this(firstName: firstName, lastName: lastName, employeeId: employeeId);

  Employee.withId(int employeeId) : this(employeeId: employeeId);

  Employee.byName(String firstName, String lastName) : super.withNames(firstName, lastName);

  int getEmployeeId() => _employeeId ?? -1;

  @override
  String getLastName() => "$_lastName (Employee)";
}

class HrEmployee extends Employee {
  double? _salary;

  HrEmployee({String? firstName, String? lastName, int? employeeId, double? salary})
      : super(firstName: firstName, lastName: lastName, employeeId: employeeId),
        _salary = salary;

  HrEmployee.withDetails(String firstName, String lastName, int employeeId, double salary)
      : this(firstName: firstName, lastName: lastName, employeeId: employeeId, salary: salary);

  HrEmployee.fromEmployee(Employee employee, double salary)
      : this(firstName: employee.getFirstName(), lastName: employee.getLastName(), employeeId: employee.getEmployeeId(), salary: salary);

  HrEmployee.basic(String firstName, String lastName) : super.byName(firstName, lastName);

  double getSalary() => _salary ?? 0.0;

  @override
  String getLastName() => "<span class="math-inline">\_lastName \(HR \- \\$</span>{_salary?.toStringAsFixed(2) ?? "0.00"})";
}

void main() {
  // Person examples
  var person1 = Person();
  print(person1.getFirstName()); // ""
  print(person1.getLastName()); // ""

  var person2 = Person.withNames("John", "Doe");
  print(person2.getFirstName()); // John
  print(person2.getLastName()); // Doe

  var person3 = Person.firstName("Jane");
  print(person3.getFirstName()); // Jane
  print(person3.getLastName()); // ""

  var person4 = Person.lastName("Smith");
  print(person4.getFirstName()); // ""
  print(person4.getLastName()); // Smith

  // Employee examples
  var employee1 = Employee();
  print(employee1.getFirstName()); // ""
  print(employee1.getLastName()); // ""
  print(employee1.getEmployeeId()); // -1

  var employee2 = Employee.withNamesAndId("Alice", "Johnson", 1234);
  print(employee2.getFirstName()); // Alice
  print(employee2.getLastName()); // Johnson (Employee)
  print(employee2.getEmployeeId()); // 1234

  var employee3 = Employee.withId(5678);
  print(employee3.getFirstName()); // ""
  print(employee3.getLastName()); // "" (Employee)
  print(employee3.getEmployeeId()); // 5678

  var employee4 = Employee.byName("Bob", "Jones");
  print(employee4.getFirstName()); // Bob
  print(employee4.getLastName()); // Jones (Employee)
  print(employee4.getEmployeeId()); // -1

  // HrEmployee examples
  var hrEmployee1 = HrEmployee();
  print(hrEmployee1.getFirstName()); // ""
  print(hrEmployee1.getLastName()); // "" (HR - $0.00)
  print(hrEmployee1.getSalary()); // 0.0

  var hrEmployee2 = HrEmployee.withDetails("David", "Miller", 9012, 85000.50);
  print(hrEmployee2.getFirstName()); // David
  print(hrEmployee2.getLastName()); // Miller (HR - $85,000.50)
  print(hrEmployee2.get
