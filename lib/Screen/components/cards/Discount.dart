import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Offers & Discounts',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black45),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 166,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        AssetImage('assets/images/beyond-meat-mcdonalds.png'))),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.deepOrange.withOpacity(0.45),
                    Colors.amber.withOpacity(0.85)
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: SvgPicture.asset("assets/icons/macdonalds.svg")),
                    Expanded(
                        child: RichText(
                            text: TextSpan(children: [
                      TextSpan(
                        text: 'Get Discount Of\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Comfortaa'),
                      ),
                      TextSpan(
                        text: '30%\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Only on order\'s through FoodKart App',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Comfortaa'),
                      ),
                    ])))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
