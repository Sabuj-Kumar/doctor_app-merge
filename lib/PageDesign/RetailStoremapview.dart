import 'package:flutter/material.dart';

import 'RetailStoreBody.dart';

class RetailStoreMapView extends StatefulWidget {
  const RetailStoreMapView({Key key}) : super(key: key);

  @override
  _RetailStoreState createState() => _RetailStoreState();
}

class _RetailStoreState extends State<RetailStoreMapView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Colors.white54,
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Back",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Color(0xff00222e)),
          ),
        ),
        centerTitle: true,
        title: Text(
          "CHOOSE YOUR MAP LOCATION",
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff00222e)),
        ),
      ),
      body: AppBody(
        icon: null,
      ),
    ));
  }
}
