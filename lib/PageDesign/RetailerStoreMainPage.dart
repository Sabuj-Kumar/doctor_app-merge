import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RetailerMainPage extends StatefulWidget {
  const RetailerMainPage({Key key}) : super(key: key);

  @override
  _RetailerMainPageState createState() => _RetailerMainPageState();
}

class _RetailerMainPageState extends State<RetailerMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Colors.white54,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                "Back",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Color(0xff00222e)),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                "CHOICE YOUR RETAIL STORE",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff00222e)),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
