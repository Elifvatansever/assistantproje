import 'package:assistantproje/screen/home/FirstPage.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  String? _name = "admin1";
  bool? _isCheck = false;
  String? _password = "1234";

  String? get name => _name;
  String? get password => _password;
  bool? get ischeck => _isCheck;

  bool? goToHome(String? name, String? password, BuildContext context) {
    _name = name;
    _password = password;

    if (name == "admin1" && password == "1234") {
      ischeck == true;
      notifyListeners();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const FirstPage())));
      return ischeck;
    } else {
      ischeck == false;
      notifyListeners();
      return ischeck;
    }
  }
}
