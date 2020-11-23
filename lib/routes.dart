import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:new_shop_app/screens/forgot_password/forgot_password.dart';
import 'package:new_shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:new_shop_app/screens/splash/splash_screen.dart';
import 'package:new_shop_app/screens/login_success/login_success.dart';
import 'package:new_shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:new_shop_app/screens/otp/otp_screen.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  SignInScreen.routeName : (context) => SignInScreen(),
  ForgotPasswordScreen.routeName : (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName : (context) => LoginSuccessScreen(),
  SignUpScreen.routeName : (context) => SignUpScreen(),
  CompleteProfileScreen.routeName : (context) => CompleteProfileScreen(),
  OtpScreen.routeName : (context) => OtpScreen(),

};

