import 'package:flutter/material.dart';

import 'Details.dart';
import 'ImageDetails.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DetailItemImage(
          imgStr: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}
