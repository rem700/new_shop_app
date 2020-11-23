import 'package:flutter/material.dart';
import 'package:new_shop_app/screens/sign_up/components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sing Up',
        ),
      ),
      body: SignUpBody(),
    );
  }
}
