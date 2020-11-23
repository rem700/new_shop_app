import 'package:flutter/material.dart';
import 'package:new_shop_app/components/social_card.dart';
import 'package:new_shop_app/constants.dart';
import 'package:new_shop_app/components/custom_suffix_icon.dart';
import 'package:new_shop_app/size_config.dart';
import 'package:new_shop_app/components/default_button.dart';
import 'package:new_shop_app/components/form_error.dart';
import 'package:new_shop_app/screens/sign_up/components/sign_up_form.dart';
import 'package:new_shop_app/screens/sign_up/components/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig().getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details of continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07,),
              SingUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07,),
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
              SizedBox(
                height: SizeConfig().getProportionateScreenHeight(20),
              ),
              Text(
                'By continuing your confirm, that you agree \nwith out Terms and Condition',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


