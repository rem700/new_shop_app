import 'package:flutter/material.dart';
import 'package:new_shop_app/components/no_account_text.dart';

import 'package:new_shop_app/components/social_card.dart';
import 'package:new_shop_app/screens/forgot_password/forgot_password.dart';
import 'package:new_shop_app/screens/sign_in/components/sing_in_form.dart';

import 'package:new_shop_app/size_config.dart';
import 'package:new_shop_app/constants.dart';

class SignInBody extends StatefulWidget {
  @override
  _SignInBodyState createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig().getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04,),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig().getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sign in with your email & password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig().getProportionateScreenHeight(20),),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


