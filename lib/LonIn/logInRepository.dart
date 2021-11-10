import 'dart:js';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loginpage/LonInControler/logInControler.dart';
import 'package:flutter_loginpage/Register/Repository/AppNavigator.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class LogInrRepository {
  var vm = Provider.of<LogInControler>(appNavigator.context, listen: true);
  Future LonInAccount() async {}
}
