import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/routes.dart';
import '../../time-table/calender_screen.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Attendance"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Time Table"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Payments"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Results"},
      //{"icon": "assets/icons/Discover.svg", "text": "More"},
    ]; */
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(25)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryCard(
              icon: "assets/icons/Flash Icon.svg",
              text: "Attendance",
              press: () {
                Navigator.pushNamed(context, CalenderScreen.routeName);
              },
            ),
            CategoryCard(
              icon: "assets/icons/Flash Icon.svg",
              text: "Time Table",
              press: () {
                Navigator.pushNamed(context, CalenderScreen.routeName);
              },
            ),
            CategoryCard(
              icon: "assets/icons/Flash Icon.svg",
              text: "Payments",
              press: () {
                Navigator.pushNamed(context, CalenderScreen.routeName);
              },
            ),
            CategoryCard(
              icon: "assets/icons/Flash Icon.svg",
              text: "Results",
              press: () {
                Navigator.pushNamed(context, CalenderScreen.routeName);
              },
            ),
          ]),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(65),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
