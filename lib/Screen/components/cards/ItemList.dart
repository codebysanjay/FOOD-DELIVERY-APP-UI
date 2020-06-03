import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final Function press;
  final String svg;
  final Color logoColor;
  const ItemCard({
    Key key,
    this.title,
    this.press,
    this.svg,
    this.logoColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Column(
            children: <Widget>[
              Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: logoColor,
                    shape: BoxShape.circle,
                  ),
                  child: Container(height: 60, child: Image.asset(svg))),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 0.8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
