import 'package:flutter/cupertino.dart';
import 'package:flutter_loginpage/Register/Repository/register_repository.dart';

class RegisterController extends ChangeNotifier {
  var statusCode;
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  String valuechoose;

  Future createAccount() async {
    statusCode = null;
    await RegisterRepository().createAccount();
  }

  getStatusCode(String code) {
    statusCode = code;
    notifyListeners();
  }

  reset() {
    mobileController.clear();
    passController.clear();
    confirmPassController.clear();
    valuechoose = null;
    notifyListeners();
  }
}
