import 'package:electronic_shop/constants.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kbackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ProductCard(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container ProductCard() {
    return Container(
      Size size = MediaQuery.of(context).size;
      margin: EdgeInsets.symmetric(
      horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      height: 190.0,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: 166.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 25,
                color: Colors.black12,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 160.0,
            width: 200.0,
            child: Image.asset(
              'images/image-1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(child: child)
      ]),
    );
  }
}
