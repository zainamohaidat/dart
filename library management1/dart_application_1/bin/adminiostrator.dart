import 'dart:io';

import 'user.dart';

class Adminiostrator {
  List<User> users = [];
  void adduser(User userAdded) {
    users.add(userAdded);
    print("user  added succesfully");
  }

  void modifyUser(User oldUser, User newUser) {
    //error
    if (users.contains(oldUser)) {
      //check the old user if he is on the list
      int index = users.indexOf(oldUser); //if he existing ==>find his index
      users[index] = newUser; //update the new user
      print('$oldUser edited to $newUser successfully');
    } else {
      print('$oldUser not found');
    }
  }

  void removeUser(User user) {
    //error
    if (users.contains(user)) {
      users.remove(user);
      print('$user removed successfully');
    } else {
      print('$user not found');
    }
  }

  void display() {
    users.forEach((element) {
      print(element.username);
    });
    //print('Users: $users');///inastance of (error)
  }
}

void main(List<String> args) {
  Adminiostrator admin = Adminiostrator();
  admin.adduser(User("zaina", "123", "assd"));
  admin.adduser(User("ahmad", "456", "ert"));
  admin.adduser(User("saleem ", "345", "fgh"));
  admin.display();
  admin.removeUser(User("ahm", "456", "ert"));

  admin.removeUser(User("zaina", "123", "assd"));
  admin.display();
  admin.modifyUser(User("sale ", "345", "fh"), User("hgkh", "098", "oiu"));
  //admin.displayUsers();
  admin.modifyUser(User("saleem ", "345", "fgh"), User("rajaa", "876", "678"));
  //admin.modifyUser(User.name("saleem "), User("rajaa", "654", "fjgf"));//why give mw unhandled exception
}
