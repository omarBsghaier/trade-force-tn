import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class HowToUsePage extends StatelessWidget {
  const HowToUsePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column (
        children: [
        Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 20 , left:  20 ),
        child :Icon(  Icons.arrow_back , color: Colors.white ,size: 36,),),

        Container(
          margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
          width: largeur,
          height: hauteur/6.5 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: AppColors.backgroundButtonSettingDisabledColor,
          ),
          child: Padding(padding: EdgeInsets.only(left:20 ,top: 25.0),
            child :  Text("Settings" , style : TextStyle( color: Colors.white,fontSize: 18 ,fontWeight: FontWeight.bold ),),
          ),
        ),

            Container( alignment: Alignment.topLeft,
              child :Padding( padding: EdgeInsets.all(15),
              child : Text("About us :",
                style :  TextStyle(color: Colors.white ,
                    fontSize: 19,
                    fontWeight:FontWeight.bold ),),),) ,

              Padding( padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)'
            , style: TextStyle(color: Colors.white ,
                fontSize: 14,
                fontWeight:FontWeight.normal ),),)
        ],
      ),
    );
  }
}
