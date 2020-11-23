import 'package:flutter/material.dart';
import 'package:new_shop_app/screens/sign_in/components/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
      ),
      body: SignInBody(),
    );
  }
}
