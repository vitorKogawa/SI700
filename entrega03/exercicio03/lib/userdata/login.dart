// It´s necessary to create a Class about the Login

class LoginData {
  String username;
  String password;
  bool passed = false;
  bool inValue = false;
  bool checkboxValue = false;

  // função que pegará os dados
  catchData() {
    print("Username: $username");
    print("Password: $password");
  }
}
