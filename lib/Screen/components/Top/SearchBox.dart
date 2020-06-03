import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: 5, left: 15),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kPrimaryColour.withOpacity(0.4))),
      child: TextField(
        style: TextStyle(fontSize: 20),
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: 'Search here',
            hintStyle: TextStyle(color: kTextLightColour),
            border: InputBorder.none,
            suffixIcon: IconButton(
                icon: SvgPicture.asset("assets/icons/menu.svg"),
                onPressed: () {})),
      ),
    );
  }
}
