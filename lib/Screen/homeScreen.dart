import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/appbars/appbar.dart';
import 'file:///C:/Users/u722184/AndroidStudioProjects/food/lib/Screen/components/Top/body.dart';

import 'components/appbars/BottomBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(context),
      bottomNavigationBar: BottonNavBar(),
      body: Body(),
    );
  }
}
