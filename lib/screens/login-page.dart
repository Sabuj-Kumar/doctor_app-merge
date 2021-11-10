import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loginpage/LonInControler/logInControler.dart';
import 'package:flutter_loginpage/PageDesign/RetailStoremapview.dart';
import 'package:flutter_loginpage/Register/Controler/register_controller.dart';
import 'package:flutter_loginpage/Register/Repository/AppNavigator.dart';
import 'package:flutter_loginpage/palatte.dart';
import 'package:flutter_loginpage/screens/registration-page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool valuefirst = false;
  bool passwordobsecure = true;
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<LogInControler>(context, listen: true);
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Center(
                    child: Container(
                        width: 130,
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.only(bottom: 10),
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 120,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.phone,
                              hint: 'Phone',
                              controller: vm.userName,
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordobsecure = !passwordobsecure;
                                  });
                                },
                                icon: passwordobsecure
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                              ),
                              obSecure: passwordobsecure,
                              controller: vm.password,
                              inputAction: TextInputAction.done,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(0),
                                  child: Theme(
                                    data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.white,
                                    ),
                                    child: Checkbox(
                                      checkColor: Colors.black,
                                      activeColor: Colors.white,
                                      value: this.valuefirst,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.valuefirst = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 13),
                                  child: Text(
                                    'Remember me',
                                    style: kBodyText,
                                  ),
                                ),
                                Text(
                                  'Forgot Password?',
                                  style: kBodyText,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                child: const Text('Login'),
                                onPressed: () async {
                                  await vm.LoginAccount();

                                  if (vm.statusCode == "200") {
                                    vm.reset();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RetailStoreMapView()),
                                    );
                                  } else {
                                    BotToast.showText(
                                        text: "Please try Again.");
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 1),
                              )),
                              child: Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Container(
                              child: ElevatedButton(
                                child: const Text('CreateNew'),
                                onPressed: () {
                                  var vm = Provider.of<RegisterController>(
                                      context,
                                      listen: false);
                                  vm.reset();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationPage()),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
