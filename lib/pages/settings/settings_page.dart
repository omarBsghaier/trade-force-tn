import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import 'package:sizer/sizer.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:  Container(

        margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
        width: largeur,
        height: hauteur/5 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: AppColors.signupButtonColor,
        ),
        child: Padding(padding: EdgeInsets.only(left:20 ,top: 30.0),
              child :  Text("Settings" , style : TextStyle( color: Colors.white,fontSize: 24 ,fontWeight: FontWeight.bold ),),
            ),

        ),

      


    )  ;
  }

}