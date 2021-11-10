import 'package:flutter/widgets.dart';
import 'package:flutter_loginpage/LonIn/logInRepository.dart';

class LogInControler extends ChangeNotifier {
  var statusCode;
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  bool CheckBox = false;

  Future LoginAccount() async {
    statusCode = null;
    await LogInrRepository().LonInAccount();
  }

  getStatusCode(code) {
    statusCode = code;
    notifyListeners();
  }

  reset() {
    userName.clear();
    password.clear();
  }
}
