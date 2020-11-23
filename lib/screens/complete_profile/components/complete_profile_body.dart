import 'package:flutter/material.dart';
import 'package:new_shop_app/constants.dart';
import 'package:new_shop_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:new_shop_app/size_config.dart';

class CompleteProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02,),
            Text(
              'Complete Profile',
              style: headingStyle,
            ),
            Text(
              'Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05,),
            CompleteProfileForm(),
            SizedBox(height: SizeConfig().getProportionateScreenHeight(30),),
            Text(
              'By continuing your confirm that you agree \nwith our Term and Condition',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}


