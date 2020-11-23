import 'package:flutter/material.dart';
import 'package:new_shop_app/components/default_button.dart';
import 'package:new_shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:new_shop_app/size_config.dart';
import 'splash_content.dart';
import 'package:new_shop_app/constants.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      'text': "Welcome to Brand Shop, Let's shop!",
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'We show easy way to shop \n Just stay with us',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': "We help people connect with stores \n Tap for continue",
      'image': 'assets/images/splash_3.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]['image'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig().getProportionateScreenHeight(56),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length,
                              (index) => buildDot(index: index)),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(text: 'Continue', press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


