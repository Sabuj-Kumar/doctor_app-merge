import 'package:flutter/material.dart';
import 'package:flutter_loginpage/data/store_data.dart';
import 'package:flutter_loginpage/utils/constants.dart';
import 'package:flutter_loginpage/widgets/half_circle_clipper.dart';

class Seller extends StatelessWidget {
  final double size;
  final Color color;
  final Store store;
  Seller({
    Key key,
    @required this.size,
    @required this.color,
    @required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
      width: size,
      height: size,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: defaultDarkBlue,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Center(
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                ClipPath(
                  clipper: HalfCircleClipper(),
                  child: Container(
                    color: color,
                  ),
                ), //'assets/images/Man.png'
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: size * 0.4,
                    height: size * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(size * 0.4),
                      border: Border.all(color: Colors.white, width: 4),
                      image: DecorationImage(
                        image: AssetImage(store.imageLink),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                color: defaultDarkBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Text(
                      store.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                    )),
                    Center(
                        child: Text(
                      store.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                    )),
                    Center(
                        child: Text(
                      store.adress,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
