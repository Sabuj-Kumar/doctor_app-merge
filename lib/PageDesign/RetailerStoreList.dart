import 'dart:developer';

import 'package:flutter/material.dart';
import 'RetailStoreListBody.dart';

class RetailStoreList extends StatefulWidget {
  const RetailStoreList({Key key}) : super(key: key);

  @override
  _RetailStoreState createState() => _RetailStoreState();
}

class _RetailStoreState extends State<RetailStoreList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Colors.white54,
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: TextButton(
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
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.qr_code,
              color: Colors.black,
              size: 17,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.qr_code_scanner,
              color: Colors.black,
              size: 17,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "CHOICE YOUR RETAIL STORE",
          style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff00222e)),
        ),
      ),
      body: AppListBody(),
    ));
  }
}
