import 'package:flutter/material.dart';
import 'package:new_shop_app/screens/forgot_password/components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
