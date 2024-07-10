import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:io';

void main(List<String> arguments) {
  //q1
  List<String> names = ["zaina", "ahmad", "razan", "baraa"];
  print(names);
  //q2 ملاحظه: كيف بدي اعمله عن طرق ال for loop ?
  Set<String> fruits = {"Apple", "banana", "orange"};
  for (String fruit in fruits) {
    print(fruit);
  }
  //note
  //for (int i = 1; i <= fruits.length; i++) {
  // print(i);كيف بدي اكتب هون
  //}
  //q3
  List<int> exmount = [100, 45, 67, 86, 88];
  int totale = 0;
  for (int i = 0; i < exmount.length; i++) {
    totale += exmount[i];
  }
  print(totale);
  //q4
  List<String> days = [];
  days.addAll([
    "Sunday",
    "Monday",
    "Tuesday",
    "wedensday",
    'thursday',
    "friday",
    "suturday"
  ]);
  days.forEach((i) {
    print(i);
  });
  //q5
  Map<String, String> map = {
    "name ": "zaina",
    "age": "22",
    "country": "jordan"
  };
  map["country"] = "UAE";

  for (MapEntry map in map.entries) {
    print(map);

    // print("Key : ${map.key},Value :${map.value}"); an other way
  }
  //q6
  Map map2 = {"name": "abc ", "phone": "0786543", "agee": "45"};
  var map2a = map2.keys.toList();

  for (int i = 0; i < map2a.length; i++) {
    if (map2a[i].length == 4) {
      print(map2a[i]);
    }
  }
}
