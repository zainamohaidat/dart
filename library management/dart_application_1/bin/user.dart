import 'dart:io';

class User {
  late String _username, _emaile, _Password;
  late int _index;
  User(this._username, this._Password, this._emaile);
  Map<String, String> users = {}; // Empty map to store usernames and passwords
  void signUp() {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!;
    stdout.write("Enter emaile: ");
    String email = stdin.readLineSync()!;
    stdout.write("Enter password: ");
    String password = stdin.readLineSync()!;

    users[username] = password;
    print("Sign up successful!\n");
  }

  String get username => _username;
  int get index => _index;
  set username(String newUsername) {
    _username = newUsername;
  }

  set index(int index1) {
    _index = index1;
  }

  void signIn() {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!;
    stdout.write("Enter password: ");
    String password = stdin.readLineSync()!;

    if (users.containsKey(username) && users[username] == password) {
      print("Sign in successful!\n");
      //manageList();
    } else {
      print("error, please try again");
      signIn();
    }
  }

  void menu() {
    // Main loop for user interaction
    int choice;
    do {
      print("1. Sign up");
      print("2. Sign in");
      print("3. Exit");
      stdout.write("Enter your choice: ");
      try {
        choice = int.parse(stdin.readLineSync()!);
      } on FormatException catch (e) {
        print("Invalid input! Please enter a number between 1 and 4.");
        choice = -1; // Set a default value to avoid infinite loop
      }
      switch (choice) {
        case 1:
          signUp();
          break;
        case 2:
          signIn();
          break;
        case 3:
          print("Exiting...\n");
          break;
        default:
          print("Invalid choice. Try again.\n");
      }
    } while (choice != 3);
  }
  //هون اذا بدي احطه جوا كيس 3 كيف المفروض ينعمل من دون ما يطلع من البرنامج
  //       int x;
  //       do {
  //         print("Are you sure to exite this app yes/no?");
  //         try {
  //           x = int.parse(stdin.readLineSync()!);
  //         } on FormatException catch (e) {
  //           print("Invalid input! Please enter a number between 0 and 2.");
  //           x = -1; // Set a default value to avoid infinite loop
  //         }
  //         switch (x) {
  //           case 0:
  //             menu();
  //             break;
  //           case 1:
  //             print("Exiting...\n");
  //             break;
  //         }
  //         break;
  //       } while (x != 2);

  //   default:
  // print("Invalid choice. Try again.\n");
  //   }
}

void main() {
  User user = User("zaina", "123", ",jb");
  user.menu();
}
