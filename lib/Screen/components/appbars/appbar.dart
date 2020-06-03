import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/constants.dart';

AppBar homeAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: RichText(
        text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            children: [
          TextSpan(
              text: 'What would you like to ',
              style: TextStyle(color: Colors.black54)),
          TextSpan(text: 'EAT ', style: TextStyle(color: kPrimaryColour)),
          TextSpan(text: '?', style: TextStyle(color: Colors.black54))
        ])),
    actions: <Widget>[
      IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {}),
    ],
  );
}
