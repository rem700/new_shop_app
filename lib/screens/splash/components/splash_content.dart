import 'package:flutter/material.dart';
import 'package:new_shop_app/constants.dart';
import 'package:new_shop_app/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'Brand Shop'.toUpperCase(),
          style: TextStyle(
            fontSize: SizeConfig().getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2,),
        Image.asset(
          image,
          height: SizeConfig().getProportionateScreenHeight(255),
          width: SizeConfig().getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}