import 'package:flutter/material.dart';
import 'package:flutter_loginpage/data/store_data.dart';
import 'package:flutter_loginpage/utils/constants.dart';
import 'package:flutter_loginpage/widgets/half-cirlcer-2.dart';

class SellerDetails extends StatelessWidget {
  final double size;
  final Color color;
  final Store store;
  SellerDetails({
    Key key,
    @required this.size,
    @required this.color,
    @required this.store,
    Null Function() onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 0, bottom: 0),
          width: size,
          height: size,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: defaultDarkBlue,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Center(
            child: Column(
              children: [
                Expanded(
                    child: Stack(
                  children: [
                    ClipPath(
                      clipper: HalfCircleClipperfordetails(),
                      child: Container(
                        color: color,
                      ),
                    ), //'assets/images/Man.png'
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          child: Align(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              width: size * 0.4,
                              height: size * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(size * 0.4),
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                image: DecorationImage(
                                  image: AssetImage(store.imageLink),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Text(
                          store.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                        Center(
                            child: Text(
                          store.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                        Center(
                            child: Text(
                          store.adress,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
