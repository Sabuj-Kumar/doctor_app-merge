import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loginpage/PageDesign/RetailerDetails.dart';
import 'package:flutter_loginpage/data/store_data.dart';
import 'package:flutter_loginpage/widgets/Searchinputfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Seller.dart';

class AppListBody extends StatefulWidget {
  const AppListBody({
    Key key,
    this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  State<AppListBody> createState() => _AppListBodyState();
}

class _AppListBodyState extends State<AppListBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: SearchTextInput(
                icon: FontAwesomeIcons.search,
                hint: 'Search Shop name / Retailer owner name.',
                inputType: TextInputType.text,
                inputAction: TextInputAction.next,
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
        SizedBox(
          height: 1.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                  child: Container(
                child: ElevatedButton(
                  child: Seller(
                    size: width / 2 - 16,
                    color: Colors.yellow.shade200,
                    store: StoreData.storeData[0],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RetailerDetails()),
                    );
                  },
                ),
              )),
            ),
            Center(
                child: Seller(
              size: width / 2 - 16,
              color: Colors.blue.shade300,
              store: StoreData.storeData[1],
            )),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Seller(
              size: width / 2 - 16,
              color: Colors.blue.shade300,
              store: StoreData.storeData[1],
            )),
            Center(
                child: Seller(
              size: width / 2 - 16,
              color: Colors.yellow.shade200,
              store: StoreData.storeData[0],
            )),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Seller(
              size: width / 2 - 16,
              color: Colors.yellow.shade200,
              store: StoreData.storeData[0],
            )),
            Center(
                child: Seller(
              size: width / 2 - 16,
              color: Colors.blue.shade300,
              store: StoreData.storeData[1],
            )),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Seller(
              size: width / 2 - 16,
              color: Colors.blue.shade300,
              store: StoreData.storeData[1],
            )),
            Center(
                child: Seller(
              size: width / 2 - 16,
              color: Colors.yellow.shade200,
              store: StoreData.storeData[0],
            )),
          ],
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
