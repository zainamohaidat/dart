import 'dart:io';

void main() {
  print("Welcome to our copmany ");
  print("please Enter your username and password to login : ");
  stdout.write("username: ");
  String username = stdin.readLineSync()!;
  stdout.write("password: ");
  int password = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your age : ");
  int age = int.parse(stdin.readLineSync()!);
  print("username : $username");
  print("password : $password");
  print("age: $age");
}
