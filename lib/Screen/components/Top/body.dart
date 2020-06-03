import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/u722184/AndroidStudioProjects/food/lib/Screen/components/cards/ItemCard.dart';
import '../cards/Discount.dart';
import 'SearchBox.dart';
import 'categoryList.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemsCards(),
          DiscountCard(),
        ],
      ),
    );
  }
}
