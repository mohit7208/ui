import 'package:flutter/material.dart';
import 'package:ui/common/custom_button.dart';
import 'package:ui/common/custom_button_with_image.dart';
import 'package:ui/common/custom_text_field.dart';
import 'package:ui/common/textstyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    ScreenUtil.init(width: 750, height: 1334, allowFontScaling: true);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(ScreenUtil().setWidth(35)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: ScreenUtil().setHeight(14),
                ),
                Text(
                  'Login',
                  style: TextStyles.titleTextStyle,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(75),
                ),
                Text(
                  'Welcome back',
                  style: TextStyles.bodyTextStyle,
                ),
                Text(
                  'please login',
                  style: TextStyles.bodyTextStyle,
                ),
                Text(
                  'to your account',
                  style: TextStyles.bodyTextStyle,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(18),
                ),
                CustomTextField(
                  hintText: 'example@mail.com',
                  labelText: 'Email',
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(18),
                ),
                CustomTextField(
                  labelText: 'Password',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      textColor: Colors.blueAccent,
                      child: Text('Forgot Password?'),
                      onPressed: () {},
                    ),
                  ],
                ),
                CustomButton(
                  borderRadius: 4,
                  color: Colors.blueAccent,
                  onPressed: () {
                    print('Width is $width height is $height');
                  },
                  text: 'Login',
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        height: ScreenUtil().setHeight(10),
                        indent: 5.0,
                        color: Colors.black87,
                      ),
                    ),
                    Text(" Or "),
                    Expanded(
                      child: Divider(
                        height: ScreenUtil().setHeight(10),
                        indent: 5.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    CustomButtonWithImage(
                      text: 'Google',
                      borderRadius: 4,
                      color: Colors.white,
                      onPressed: () {},
                      imageAsset: 'assets/google-logo.png',
                    ),
                    CustomButtonWithImage(
                      text: 'Facebook',
                      borderRadius: 4,
                      color: Colors.white,
                      onPressed: () {},
                      imageAsset: 'assets/f.png',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
