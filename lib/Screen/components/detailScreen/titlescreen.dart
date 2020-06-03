import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

Row shopName({String name}) {
  return Row(
    children: <Widget>[
      Icon(
        Icons.location_on,
        color: Colors.black87,
      ),
      SizedBox(
        width: 10,
      ),
      Text(name)
    ],
  );
}

class PriceRating extends StatelessWidget {
  const PriceRating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Cheese Burger',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SmoothStarRating(
                      rating: 4.4,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '24 Reviews',
                      style: TextStyle(color: kTextLightColour),
                    )
                  ],
                ),
              ],
            ),
          ),
          ClipPath(
            clipper: PriceClipper(),
            child: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 15),
              height: 70,
              width: 60,
              color: Colors.amber,
              child: Text(
                '\$15',
                style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PriceClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
