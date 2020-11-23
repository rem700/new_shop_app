import 'package:flutter/material.dart';
import 'package:new_shop_app/screens/login_success/components/login_success_body.dart';


class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          'Login Success',
        ),
      ),
      body: LoginSuccessBody(),
    );
  }
}
