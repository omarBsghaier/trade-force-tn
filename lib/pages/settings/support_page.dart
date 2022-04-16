import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../utils/colors.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return    Scaffold(
      backgroundColor:  AppColors.backgroundColor ,
        body :Column(

         children: [
          Container(
           alignment: Alignment.topLeft,
           margin: EdgeInsets.only(top: 20 , left:  20 ),
           child :Icon(  Icons.arrow_back , color: Colors.white ,size: 36,),),
          Container(
            margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0 , bottom: 15) ,
            width: largeur,
            height: hauteur/6.5 ,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: AppColors.backgroundButtonSettingDisabledColor,
          ),
           child: Padding(padding: EdgeInsets.only(left:20 ,top: 25.0),
            child :  Text("Support - Open ticket" , style : TextStyle( color: Colors.white,fontSize: 18 ,fontWeight: FontWeight.bold ),),
          ),
        ),

           Container(
             margin: EdgeInsets.only(left: 30.0 , right: 30.0 ,top: 20.0) ,
             width: largeur,
             height: hauteur/10 ,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30.0),
               color: AppColors.backgroundButtonSettingDisabledColor,
             ),
             child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(

               style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20) ,
               textAlign: TextAlign.center ,
               decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: '  your name',
                   hintStyle: TextStyle(fontSize: 16.0, color: Colors.white54),
               ),

             ),

           ),
           ),
           Container(
             margin: EdgeInsets.only(left: 30.0 , right: 30.0 ,top: 20.0) ,
             width: largeur,
             height: hauteur/10 ,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30.0),
               color: AppColors.backgroundButtonSettingDisabledColor,
             ),
             child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
               child: TextField(

                 style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20) ,
                 textAlign: TextAlign.center ,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'E-mail',
                   hintStyle: TextStyle(fontSize: 16.0, color: Colors.white54),
                 ),

               ),

             ),
           ),
           Container(
             margin: EdgeInsets.only(left: 30.0 , right: 30.0 ,top: 20.0) ,
             width: largeur,
             height: hauteur/2.6,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30.0),
               color: AppColors.backgroundButtonSettingDisabledColor,
             ),
             child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
               child: TextField(

                 style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20) ,
                 textAlign: TextAlign.center ,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'Message',
                   hintStyle: TextStyle(fontSize: 16.0, color: Colors.white54),
                 ),

               ),

             ),
           ),
           Container(
               transformAlignment : Alignment.bottomLeft,
             margin: EdgeInsets.only(top:  10 ),
             width: largeur / 5,
             alignment: Alignment.bottomLeft,
             child :ElevatedButton(
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(AppColors.backgroundColor),
                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(30.0)),
                 )
                 ),
               ),
               onPressed: () {  },
               child: Ink(
                 decoration: const BoxDecoration(
                   gradient: LinearGradient(
                     colors: <Color>[AppColors.signinButtonFirstColor, AppColors.signinButtonSecondColor],
                   ),
                   borderRadius: BorderRadius.all(Radius.circular(80.0)),
                 ),
                 child: Container(
                   constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                   alignment: Alignment.bottomLeft,
                   child: const Text(
                     'Submit',
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.white),
                   ),
                 ),
               ),




), ),
         ],
     )
    ) ;
  }
}
