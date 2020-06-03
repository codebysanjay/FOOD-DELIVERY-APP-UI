import 'package:flutter/material.dart';

import 'file:///C:/Users/u722184/AndroidStudioProjects/food/lib/Screen/components/cards/ItemList.dart';
import 'file:///C:/Users/u722184/AndroidStudioProjects/food/lib/Screen/components/detailScreen/Details.dart';

class ItemsCards extends StatelessWidget {
  const ItemsCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: 'McDonald\'s',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsPage();
              }));
            },
            svg: "assets/images/mcdonalds.png",
            logoColor: Colors.amber.withOpacity(0.25),
          ),
          ItemCard(
            title: 'KFC',
            press: () {},
            svg: "assets/images/kfc.png",
            logoColor: Colors.redAccent.withOpacity(0.25),
          ),
          ItemCard(
            title: 'TACO BELL',
            press: () {},
            svg: "assets/images/unnamed.png",
            logoColor: Colors.deepPurple.withOpacity(0.22),
          ),
          ItemCard(
            title: 'PIZZA HUT',
            press: () {},
            svg: "assets/images/Pizza.png",
            logoColor: Colors.redAccent.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}
