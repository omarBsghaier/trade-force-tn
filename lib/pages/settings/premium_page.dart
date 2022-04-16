import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tradeforcetn/widget/LinearGradientMask.dart';

import '../../utils/colors.dart';

class PremiumPage   extends StatelessWidget {
  const PremiumPage ({Key? key}) : super(key: key);

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
          SizedBox( height: 15),

          Container(
            margin: EdgeInsets.only(left: 25.0 , right: 25.0 ,top: 20.0) ,
            width: largeur,
            height: hauteur /1.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: AppColors.backgroundButtonSettingDisabledColor,
            ),
            child: Column(
                children: [
                   Container(
               margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0, bottom:  20 ) ,
             width: largeur,
             height: hauteur / 7 ,
             decoration: BoxDecoration(
              color:  Color.fromRGBO(255, 3, 75, 1),
              borderRadius: BorderRadius.circular(30.0),
               ),
               child: Expanded(
                 child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                     const Text(
                        'Monthly premium ',
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.bold ,  ),
                          ),
                   Container(
                    margin: const EdgeInsets.only(top: 5.0),
                      child:  const Text(
                       '40.03 \$ US',
                     textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold ,  ),
                     ),
                   ),
                   ],


             )
               ),

             ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0, bottom:  20 ) ,
                    width: largeur,
                    height: hauteur / 7,
                    decoration: BoxDecoration(
                      color: AppColors.backgrounfButtonSettingColor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Monthly premium ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.bold ,  ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              child:  const Text(
                                '40.03 \$ US',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold ,  ),
                              ),
                            ),
                          ],


                        )
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0, bottom:  20 ) ,
                    width: largeur,
                    height: hauteur / 7,
                    decoration: BoxDecoration(
                      gradient:  LinearGradient(
                        colors: <Color>[AppColors.signinButtonFirstColor, AppColors.signinButtonSecondColor],
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Monthly premium ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.bold ,  ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              child:  const Text(
                                '40.03 \$ US',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold ,  ),
                              ),
                            ),
                          ],


                        )
                    ),

                  ),


                ],
            ),


          )
        ],
      )

      ,
    );
  }
}
