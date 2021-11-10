import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loginpage/PageDesign/CodeVarification.dart';
import 'package:flutter_loginpage/Register/Controler/register_controller.dart';
import 'package:flutter_loginpage/Register/Repository/register_repository.dart';
import 'package:flutter_loginpage/palatte.dart';
import 'package:flutter_loginpage/widgets/backgroundimgregistration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../widgets/widgets.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool passwordobsecure = true;
  bool confirmobsecure = true;

  List listItem = ["Customer", "Retailer", "wholesaler"];
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<RegisterController>(context, listen: true);
    return Stack(
      children: [
        BackgroundImageForRegistration(),
        Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            toolbarHeight: 50.0,
            backgroundColor: Colors.white54,
          ),
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
                  Center(
                    child: Container(
                      width: 260,
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.only(left: 60),
                      height: 50,
                      child: Text(
                        'Create New Account',
                        style: kBodyText,
                      ),
                    ),
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
                              controller: vm.mobileController,
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
                              controller: vm.passController,
                              inputAction: TextInputAction.done,
                            ),
                            TextInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Confirm Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    confirmobsecure = !confirmobsecure;
                                  });
                                },
                                icon: confirmobsecure
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                              ),
                              obSecure: confirmobsecure,
                              inputAction: TextInputAction.done,
                              controller: vm.confirmPassController,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                ),
                                child: DropdownButton(
                                  hint: Text("Select Items: "),
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 36,
                                  iconEnabledColor: Colors.black,
                                  isExpanded: true,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22),
                                  value: vm.valuechoose,
                                  onChanged: (value) {
                                    setState(() {
                                      vm.valuechoose = value;
                                    });
                                  },
                                  items: listItem.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Agree with terms & conditions',
                                  style: kBodyText,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                child: const Text('Confirm'),
                                onPressed: () async {
                                  if (valuefirst) {
                                    await vm.createAccount();
                                    if (vm.statusCode == "200") {
                                      vm.reset();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VarificationCode()),
                                      );
                                    } else {
                                      BotToast.showText(
                                          text: "somthing went wrong");
                                    }
                                  }
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
