import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Screen/components/appbars/DetailAppBar.dart';
import 'package:food/Screen/components/detailScreen/titlescreen.dart';
import 'package:food/constants.dart';

import 'NewBody.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColour,
      appBar: detailAppBar(context),
      body: Body(),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            shopName(name: 'McDonald\'s'),
            PriceRating(),
            Text(
              'McDonald \'s restaurant 6492 in Glenshaw PA has a friendly, fast and efficient staff. Never had a problem, always a great dining experience.McDonald \'s restaurant 6492 in Glenshaw PA has a friendly, fast and efficient staff. Never had a problem, always a great dining experience.',
              style: TextStyle(height: 2, fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              width: size.width * 0.8,
              height: size.height * 0.1,
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/bag.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Order Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
