import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 8,
            spreadRadius: 2,
            color: Colors.lightBlueAccent.withOpacity(0.1))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/Glyph.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/Following.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/person.svg"),
              onPressed: () {}),
        ],
      ),
    );
  }
}
