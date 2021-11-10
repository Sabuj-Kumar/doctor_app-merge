import 'package:flutter/material.dart';
import 'package:flutter_loginpage/PageDesign/RetailerStoreList.dart';
import 'package:flutter_loginpage/PageDesign/SellerDetails.dart';
import 'package:flutter_loginpage/PageDesign/TotalValue.dart';
import 'package:flutter_loginpage/data/store_data.dart';

class RetailerDetails extends StatefulWidget {
  const RetailerDetails({Key key}) : super(key: key);

  @override
  _RetailStoreState createState() => _RetailStoreState();
}

class _RetailStoreState extends State<RetailerDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
        centerTitle: true,
        title: Text(
          "RETAIL STORE Details",
          style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff00222e)),
        ),
      ),
      body: Container(
        color: Color(0xFF04242c),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                Center(
                    child: SellerDetails(
                  size: width,
                  color: Colors.blue.shade300,
                  store: StoreData.storeData[1],
                )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mobile-app.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 40,
              child: ElevatedButton(
                child: const Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TotalValue()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
