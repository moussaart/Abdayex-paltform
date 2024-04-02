class MyUser {
  String? _name;
  String? _address;
  String? _password;
  DateTime? _date;

  // Constructor with nullable parameters
  MyUser({String? name, String? address, String? password, DateTime? date}) {
    _name = name;
    _address = address;
    _password = password;
    _date = date;
  }

  // Getter and Setter for 'name'
  String? get name => _name;
  set name(String? value) => _name = value;
  void changeName(String newName) => _name = newName;

  // Getter and Setter for 'address'
  String? get address => _address;
  set address(String? value) => _address = value;
  void changeAddress(String newAddress) => _address = newAddress;

  // Getter and Setter for 'password'
  String? get password => _password;
  set password(String? value) => _password = value;
  void changePassword(String newPassword) => _password = newPassword;

  // Getter and Setter for 'date'
  DateTime? get date => _date;
  set date(DateTime? value) => _date = value;
  void changeDate(DateTime newDate) => _date = newDate;

  // Function to verify that all variables are not null
  bool areVariablesNotNull() {
    return _name != null &&
        _address != null &&
        _password != null &&
        _date != null;
  }

  String findNullVariable() {
    if (_name == null) {
      return "Name is null";
    } else if (_address == null) {
      return "Address is null";
    } else if (_password == null) {
      return "Password is null";
    } else if (_date == null) {
      return "Date is null";
    } else {
      return "No variable is null";
    }
  }

// Functions to check if each variable is null
  bool isNameNull() => _name == null;
  bool isAddressNull() => _address == null;
  bool isPasswordNull() => _password == null;
  bool isDateNull() => _date == null;
}
