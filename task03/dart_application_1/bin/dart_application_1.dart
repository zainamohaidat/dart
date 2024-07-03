import 'dart:io';

void main() {
  //Q1
  print("zaina mhaidat");
  //Q2
  print('Hello I am "john Doe"');
  print('Hello I\'am "john Doe"');
  //Q3
  const int x = 7;
  //Q4
  stdout.write("enter p : ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("enter t : ");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("enter r : ");
  double r = double.parse(stdin.readLineSync()!);
  double y = 0;
  y = p * t * r;
  double Formula = 0;
  Formula = y / 100;
  stdout.write("Formula = $Formula");
  print("");
  //Q5
  stdout.write("enter the number : ");
  int d = int.parse(stdin.readLineSync()!);
  stdout.write("the square numer = ${d ^ 2}");
  //Q6
  print("");
  stdout.write("enter first name : ");
  String firstName = stdin.readLineSync()!;
  stdout.write("enter last name : ");
  String lastName = stdin.readLineSync()!;
  stdout.write("$firstName $lastName");
  //Q7
  print("");
  stdout.write("enter z:");
  int z = int.parse(stdin.readLineSync()!);
  stdout.write("enter f:");
  int f = int.parse(stdin.readLineSync()!);
  double quotient = z / f;
  print("quotient = $quotient");
  double remainder = quotient * f - z;
  print("remainder= $remainder");
  //Q8
  int num1 = 4;
  int num2 = 5;
  int num3 = num1;
  num1 = num2;
  print(num3);
  print(num2);
  //Q9
  //q10
  int k = int.parse(stdin.readLineSync()!);
  //q11
  stdout.write("enter total amount = ");
  int totalBill = int.parse(stdin.readLineSync()!);
  print("");
  stdout.write("enter number of people =");
  int numPeople = int.parse(stdin.readLineSync()!);
  double formula = totalBill / numPeople;
  print("formula = $formula");
  //Q12
  int distance = 25;
  int speed = 40;
  double formule = distance / speed;
  print(formule);
}
