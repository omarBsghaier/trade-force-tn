import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tradeforcetn/pages/home/home_page.dart';
import 'package:tradeforcetn/pages/index_page.dart';
import 'package:tradeforcetn/pages/settings/settings_page.dart';
import 'package:tradeforcetn/utils/icons.dart';
import 'package:tradeforcetn/widget/LinearGradientMask.dart';
import 'package:tradeforcetn/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        bottomAppBarColor: AppColors.signupButtonColor
      ),
      home:  IndexPage (),
    );
  }
}

class   SignUp extends StatelessWidget {
  const SignUp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:Container(

        margin: EdgeInsets.only(left: 80.0 , right:80.0  ),
        child : Column (

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment : CrossAxisAlignment.center,

        children:   <Widget>  [

          SizedBox(height: 20),
          Image.asset('images/logo.png'),
          SizedBox(height: 20),
          Text("Create a Free account" , style: TextStyle(color: Colors.white),),
          SizedBox(height: 40 ),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.backgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ))

            ),
              onPressed: () { },
            child: Ink(
              decoration: const BoxDecoration(
                color: AppColors.signupButtonColor,
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.backgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              )
            ),
            ),


            onPressed: () { },
            child: Ink(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[AppColors.signinButtonFirstColor, AppColors.signinButtonSecondColor],
                ),
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),


        ],
     ),
    ),

      );
  }
}




