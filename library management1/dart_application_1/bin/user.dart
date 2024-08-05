import 'dart:io';

class User {
  late String _username, _emaile, _Password;
  late int _index;
  User(this._username, this._Password, this._emaile);
  @override
  String toString() {
    return 'User(passwoord: $_Password, user name: $_username)';
  }

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

//create new function
  userChoice() {
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
          print("Are you sure to exit this app yes/no?");
          String c = stdin.readLineSync()!;
          if (c.toLowerCase() == "yes") {
            print("Exiting...");
            exit(0);
          } else {
            //call function inside it (recursion)
            userChoice();
          }
          break;
        default:
          print("Invalid choice. Try again.\n");
      }
    } while (choice != 3);
  }

  void menu() {
    userChoice();
  }
}

void main() {
  User user = User("zaina", "123", ",jb");
  user.menu();
}
