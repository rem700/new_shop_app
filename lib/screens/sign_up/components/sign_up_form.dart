import 'package:flutter/material.dart';
import 'package:new_shop_app/constants.dart';
import 'package:new_shop_app/components/custom_suffix_icon.dart';
import 'package:new_shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:new_shop_app/size_config.dart';
import 'package:new_shop_app/components/default_button.dart';
import 'package:new_shop_app/components/form_error.dart';

class SingUpForm extends StatefulWidget {
  @override
  _SingUpFormState createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String conformPassword;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(30),
          ),
          buildPassFormField(),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(30),
          ),
          buildConfPassFormField(),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(40),
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate()) {
                //todo to compete profile
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conformPassword = newValue,
      onChanged: (value) {
        if (password == conformPassword) {
          removeError(error: kPassNullError);
        } return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        }
        // else if (!emailValidatorRegExp.hasMatch(value)) {
        //   addError(error: kInvalidEmailError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}