import 'dart:convert';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_loginpage/Register/Controler/register_controller.dart';
import 'package:flutter_loginpage/Register/Repository/AppNavigator.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class RegisterRepository {
  var vm = Provider.of<RegisterController>(appNavigator.context, listen: false);

  Future createAccount() async {
    BotToast.showLoading();
    final response = await http.post(
        Uri.parse('https://openpi.dhakachoice.com/api/Account/Register'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "phoneNumber": vm.mobileController.text,
          "password": vm.passController.text,
          "confirmPassword": vm.confirmPassController.text,
          "roleName": vm.valuechoose
        }));

    print("Body ${response.body}");

    try {
      if (response.statusCode == 200) {
        vm.getStatusCode(response.statusCode.toString());
        BotToast.showText(text: "Account Created Completed");
        BotToast.closeAllLoading();
      } else {
        BotToast.closeAllLoading();
      }
    } catch (e) {
      BotToast.closeAllLoading();
      //throw Exception('Failed to create album.');
    }
  }
}
