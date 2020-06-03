import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:food/constants.dart';

class ListBox extends StatelessWidget {
  final bool isActive;
  final String title;
  final Function press;
  final String iconData;

  const ListBox({
    Key key,
    this.isActive,
    this.title,
    this.press,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(3),
            height: 50,
            width: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: const Offset(1, 1),
                blurRadius: 4.0,
                spreadRadius: 1.0,
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                icon: SvgPicture.asset("$iconData"), onPressed: press),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: isActive
                ? TextStyle(color: kPrimaryColour, fontWeight: FontWeight.bold)
                : TextStyle(
                    color: kSecondaryColour, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
