import 'dart:io';

void main() {
  int sum = 0;
  //q1&q2
  print("the natural numbers are:");
  for (int i = 1; i <= 10; i++) {
    stdout.write("$i ");
    sum += i;
  }
  print("");
  print("the sum of first 10 natural numbers : $sum");
  
  print("The perfect numbers between 1 to 500 are : ");
  for (int i = 2; i <= 500; i++) {
    int sum1 = 0;
    for (int j = 1; j < i; j++) {
      if (i % j == 0) {
        sum1 += j;
      }
    }
    if (sum1 == i) {
      print(i);
    }
  }
  print("");

  //Q4ther is aproblem ,but i dont what it is
  bool check = true;
  stdout.write("Input a number to check prime or note:");
  int num3 = int.parse(stdin.readLineSync()!);
  if (num3 <= 1) {
    check = false;
  } else {
    for (int i = 2; i < num3; i++) {
      if (num3 % i == 0) {
        check = false;
      } 
    }
    
    }
    if (check ==true){
      print ("prime");
    }
    else {
      print("not");
    }
  }
  //Q5
  int result = 0;
  int summation = 0;
  stdout.write("input the value for ntn term :");
  int x = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= x; i++) {
    result = i * i;
    print("$i *$i= $result");
    summation += result;
  }
  stdout.write("the sum of the above series is :$summation");
  //q6
  print("");
  stdout.write("input the number of charectrs for a side :");
  int z = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= z; i++) {
    for (int j = 1; j <= z; j++) {
      stdout.write('# ');
    }

    print("");
  }
  //q7
  stdout.write("input the number of terms :");
  int a = int.parse(stdin.readLineSync()!);
  int r = 0;
  for (int i = 1; i <= a; i++) {
    r = i * i * i;
    print("Number is: $i and the cube of $i is : $r");
  }
}
