import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  int a;
  printname();
  stdout.write("enter the number : ");
  a = int.parse(stdin.readLineSync()!);
  evennum(a);
  stdout.write("enter the name : ");
  String name = stdin.readLineSync()!;
  greet(name);
  stdout.write("enter the value : ");
  double r = double.parse(stdin.readLineSync()!);
  print(areafun(r));
  stdout.write("enter the value : ");
  int c = int.parse(stdin.readLineSync()!);
  stdout.write("enter the value : ");
  int v = int.parse(stdin.readLineSync()!);
  certainnum(c, v);
  stdout.write("enter the value : ");

  int d = int.parse(stdin.readLineSync()!);
  stdout.write("enter the value : ");
  int b = int.parse(stdin.readLineSync()!);
  addfun(d, b);
  //double num1 = double.parse(stdin.readLineSync()!);
  //double num2 = double.parse(stdin.readLineSync()!);
  //double num3 = double.parse(stdin.readLineSync()!);
  //maxnum(num1, num2, num3);
  stdout.write("enter the value : ");
  int f = int.parse(stdin.readLineSync()!);
  isEven(f);
  stdout.write("enter the user name :");
  String name1 = stdin.readLineSync()!;
  stdout.write("enter the age :");
  int age = int.parse(stdin.readLineSync()!);
  createuser(name1, age);
}

void printname() {
  print("zaina mohidat");
}

void evennum(int n) {
  if (n % 2 == 0) {
    print("the number is even ");
  } else {
    print("the number is odd ");
  }
}

void greet(String name) {
  print('"Hello, $name "');
}

double areafun(double r) {
  double formula = 0;
  formula = (3.14 * r * r);
  print("the formula= $formula");
  return formula;
}

void certainnum(var n, var x) {
  stdout.write(" $n * $x =");
  print(pow(n, x)); // i can not find the error
}

int addfun(int x, int y) {
  print("the sum=${x + y}");
  return (x + y);
}

double maxnum(double num1, double num2, double num3) {
  double c = max(num1, num2);
  return max(c, num3);
}

bool isEven(int n) {
  if (n % 2 == 0) {
    return true;
  } else
    return false;
}

void createuser(String name, int age, {bool isActive = true}) {
  print("the user name : $name");
  print("the age = $age");
  print("the isActive :$isActive");
}
