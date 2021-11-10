import 'package:flutter/material.dart';
import 'package:flutter_loginpage/screens/login-page.dart';

class VarificationCode extends StatefulWidget {
  const VarificationCode({Key key}) : super(key: key);

  @override
  _VarificationCodeState createState() => _VarificationCodeState();
}

class _VarificationCodeState extends State<VarificationCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xfffd6500),
            title: Center(
                child: Text(
              "Code Verification",
              style: TextStyle(color: Colors.black),
            )),
          ),
          body: BodyDesign()),
    );
  }
}

class BodyDesign extends StatefulWidget {
  const BodyDesign({Key key}) : super(key: key);

  @override
  _BodyDesignState createState() => _BodyDesignState();
}

class _BodyDesignState extends State<BodyDesign> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/VaricationImage.png',
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text("OTP has been sent to your mobile. Please enter.",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff00222e))),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 3.0,
                    width: 50.0,
                    color: Colors.black,
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  ),
                  Container(
                    height: 3.0,
                    width: 50.0,
                    color: Colors.black,
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  ),
                  Container(
                    height: 3.0,
                    width: 50.0,
                    color: Colors.black,
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  ),
                  Container(
                    height: 3.0,
                    width: 50.0,
                    color: Colors.black,
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
              Container(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  child: const Text('Verify'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
