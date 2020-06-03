import 'package:flutter/material.dart';
import 'listbox.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListBox(
            title: 'Juice',
            isActive: true,
            iconData: 'assets/icons/spritz.svg',
            press: () {},
          ),
          ListBox(
            title: 'Ice Creams',
            isActive: false,
            iconData: 'assets/icons/ice-cream.svg',
            press: () {},
          ),
          ListBox(
            title: 'Burger',
            isActive: false,
            iconData: 'assets/icons/burger.svg',
            press: () {},
          ),
          ListBox(
            title: 'Biryani',
            isActive: false,
            iconData: 'assets/icons/food-and-restaurant.svg',
            press: () {},
          ),
          ListBox(
            title: 'Barbecue',
            isActive: false,
            iconData: 'assets/icons/bbq.svg',
            press: () {},
          ),
          ListBox(
            title: 'Fruits',
            isActive: false,
            iconData: 'assets/icons/fruits.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
