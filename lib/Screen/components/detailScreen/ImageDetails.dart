import 'package:flutter/material.dart';

class DetailItemImage extends StatelessWidget {
  final String imgStr;
  const DetailItemImage({
    Key key,
    this.imgStr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgStr,
      height: size.height * 0.25,
      fit: BoxFit.fill,
      width: double.infinity,
    );
  }
}
