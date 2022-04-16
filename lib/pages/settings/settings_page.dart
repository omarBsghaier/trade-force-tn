import 'package:flutter/material.dart';
import 'package:tradeforcetn/pages/settings/how_to_use_page.dart';
import 'package:tradeforcetn/pages/settings/premium_page.dart';
import 'package:tradeforcetn/pages/settings/support_page.dart';
import '../../utils/colors.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column (
          crossAxisAlignment : CrossAxisAlignment.center ,
          mainAxisAlignment: MainAxisAlignment.start,
          children : [

           Container(
             margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
             width: largeur,
             height: hauteur/6.5 ,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: AppColors.signupButtonColor,
            ),
            child: Padding(padding: EdgeInsets.only(left:20 ,top: 25.0),
            child :  Text("Settings" , style : TextStyle( color: Colors.white,fontSize: 18 ,fontWeight: FontWeight.bold ),),
          ),
        ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
              width: largeur,
              height: hauteur/14 ,
              child : ElevatedButton(
               style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.backgrounfButtonSettingColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                )
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PremiumPage()));
              },

              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Go premium',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),),

            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
              width: largeur,
              height: hauteur/14 ,
              child : ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.backgrounfButtonSettingColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  )
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowToUsePage()));

                },

                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'How to use ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),),

            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
              width: largeur,
              height: hauteur/14 ,
              child : ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.backgrounfButtonSettingColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  )
                  ),
                ),
                onPressed: () { },

                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Go premium',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),),

            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
              width: largeur,
              height: hauteur/14 ,
              child : ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.backgrounfButtonSettingColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  )
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SupportPage()));
                },

                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Support - Open ticket',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),),


            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
              width: largeur,
              height: hauteur/14 ,
              child : ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.backgrounfButtonSettingColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  )
                  ),
                ),
                onPressed: () { },

                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Rate us on Playstore',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),),

          ]
      )


      


    )  ;
  }

}