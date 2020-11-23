import 'package:flutter/material.dart';
import 'package:new_shop_app/constants.dart';
import 'package:new_shop_app/size_config.dart';

class SplashBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              Text(
                'My Brand Shop',
                style: TextStyle(
                  fontSize: SizeConfig().getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}


