import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loginpage/PageDesign/RetailerStoreList.dart';
import 'package:flutter_loginpage/data/store_data.dart';
import 'package:flutter_loginpage/widgets/Searchinputfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Seller.dart';

class AppBody extends StatefulWidget {
  const AppBody({
    Key key,
    @required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        SizedBox(
          height: 16.0,
        ),
        Opacity(
          opacity: 0.4,
          child: Row(
            children: [
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: SearchTextInput(
                  icon: FontAwesomeIcons.search,
                  hint: 'Search Shop name / Retailer owner name.',
                ),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 36,
                padding: EdgeInsets.zero,
                splashRadius: 24,
                icon: Icon(
                  CupertinoIcons.bars,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Opacity(
                opacity: 0.5,
                child: Seller(
                  size: width / 2 - 16,
                  color: Colors.yellow.shade200,
                  store: StoreData.storeData[0],
                )),
            Opacity(
                opacity: 0.5,
                child: Seller(
                  size: width / 2 - 16,
                  color: Colors.blue.shade300,
                  store: StoreData.storeData[1],
                )),
          ],
        ),
        Opacity(
          opacity: 0.8,
          child: SizedBox(
            child: Container(
              color: Colors.grey.shade400,
              margin: EdgeInsets.symmetric(horizontal: (width / 2) - 20),
            ),
            height: 2.0,
            width: 16.0,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 30.0),
          alignment: Alignment.topLeft,
          child: Text(
            "Can you confirm if this is your location?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff00222f),
                fontSize: 15.0),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          width: 1000.0,
          height: 100.0,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0),
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: Color(0xff00222e),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: 900.0,
            child: Image.asset(
              "assets/images/Map.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
            margin: const EdgeInsets.only(left: 30.0),
            alignment: Alignment.topLeft,
            child: Opacity(
              opacity: 0.8,
              child: Text(
                '+ Select a different location',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            )),
        SizedBox(height: 20.0),
        Container(
          width: double.infinity,
          height: 45,
          child: ElevatedButton(
            child: const Text('Confirm Location'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RetailStoreList()),
              );
            },
          ),
        ),
      ],
    );
  }
}
/*
Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Opacity(
                opacity: 0.7,
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  padding: const EdgeInsets.all(15.0),
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xff00222e),
                  ),
                  child: Row(children: [
                    Transform.rotate(
                        angle: 89.5,
                        child: Icon(
                          Icons.search,
                          color: Colors.white60,
                        )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Search Shop name / Retailer owner name.",
                      style: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
              ),
            ),
            Center(
              child: Icon(
                CupertinoIcons.bars,
                size: 45.0,
              ),
            )
          ],
        ),
        
*/