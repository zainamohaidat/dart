import 'dart:io';

void main() {
  //grades of student
  stdout.write("enter the mark : ");
  double mark = double.parse(stdin.readLineSync()!);
  if (mark >= 90) {
    print("A");
  } else if (mark >= 70) {
    print("B");
  } else if (mark >= 40) {
    print("C");
  } else {
    print("F");
  }
  //proidly student
  stdout.write("enter name student1:");
  String student1 = stdin.readLineSync()!;
  stdout.write("enter the mark:");
  int markst1 = int.parse(stdin.readLineSync()!);
  stdout.write("enter name student2:");
  String student2 = stdin.readLineSync()!;
  stdout.write("enter the mark:");
  int markst2 = int.parse(stdin.readLineSync()!);
  if (markst1 > markst2) {
    print("the name student $student1 and mark= $markst1 ");
  }
  if (markst2 > markst1) {
    print("the name student $student2 and mark= $markst2 ");
  } else {
    print("the students are equal ");
  }
  //TRIANGKE TYPE
  stdout.write('enter side 1 : ');
  double side1 = double.parse(stdin.readLineSync()!);
  stdout.write('enter side 2 : ');
  double side2 = double.parse(stdin.readLineSync()!);
  stdout.write('enter side 3 : ');
  double side3 = double.parse(stdin.readLineSync()!);
  if (side1 == side2 && side1 == side3) {
    print("Equilteral Triangle ");
  } else if (side1 == side2 || side1 == side3 || side2 == side3) {
    print("Isoscels Triangle ");
  } else {
    print("Scalene Triangle ");
  }
  //odd or even
  stdout.write('"enter the number:');
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("even number ");
  } else {
    print("odd number ");
  }
  int x = int.parse(stdin.readLineSync()!);
  switch (x) {
    case 1:
      print("Sunday");
      break;
    case 2:
      print("Monday");
      break;
    case 3:
      print("tusday");
      break;
    case 4:
      print("wedensday");
      break;
    case 5:
      print("thursday");
      break;
    case 6:
      print("friday");
      break;
    case 7:
      {
        print("suturday");
        break;
      }
    default:
      {
        print(" error");
      }
  }
}
