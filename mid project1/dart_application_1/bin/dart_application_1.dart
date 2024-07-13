import 'dart:io';

void main() {
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

  // Sign-in functionality

  void signIn() {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!;
    print("Enter password: ");
    String password = stdin.readLineSync()!;

    if (users.containsKey(username) && users[username] == password) {
      print("Sign in successful!\n");
      manageList();
    }
  }

  // Main loop for user interaction
  int choice;
  do {
    print("1. Sign up");
    print("2. Sign in");
    print("3. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

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

void manageList() {
  List<String> myList = []; // Empty list to store items

  int choice;

  do {
    print("1. Add item");
    print("2. View list");
    print("3. Clear list");
    print("4. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter item to add: ");
        String item = stdin.readLineSync()!;
        myList.add(item);
        print("Item added!\n");
        break;
      case 2:
        if (myList.isEmpty) {
          print("Your list is empty.\n");
        } else {
          print("Your list:");
          for (int i = 0; i < myList.length; i++) {
            print("${i + 1}. ${myList[i]}");
          }
          print("\n");
        }
        break;
      case 3:
        stdout.write("enter the task that you are needed to clear :");
        String index = stdin.readLineSync()!;

        myList.remove(index);

        //myList.clear();
        print("List cleared!\n");
        break;
      case 4:
        print("Exiting...\n");
        break;
      default:
        print("Invalid choice. Try again.\n");
    }
  } while (choice != 4);
}
