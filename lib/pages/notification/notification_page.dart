import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment : CrossAxisAlignment.center ,
          mainAxisAlignment: MainAxisAlignment.start,
          children : [

            Container(
              margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
              width: largeur,
              height: hauteur/6.5 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.backgroundButtonhomeColor,
              ),
              child: Padding(padding: EdgeInsets.only(left:20 ,top: 25.0),
                child :  Text("Notification" , style : TextStyle( color: Colors.white,fontSize: 18 ,fontWeight: FontWeight.bold ),),
              ),
            ),
            ListView(                      // pour le momment list static , builder dynamique
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children : [
                Container(
                  margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
                  width: largeur,
                  height: hauteur/8.5 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: AppColors.backgroundButtonhomeColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Padding(padding: EdgeInsets.all(4),
                        child :Image.asset('images/bitcoin.png'),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 5 ,left: 4),
                            child:Text('BTCUSDT' ,
                              style: TextStyle(
                                  color : Color.fromRGBO(181, 180, 255, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800 ),), ),
                          Padding(padding: EdgeInsets.only(bottom: 5,left : 4 ),
                            child:Text('Signal closet with - 8,99 % Loss',
                              style: TextStyle(
                                  color : Color.fromRGBO(255, 3, 75, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800 ),), ),

                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(top : 15  ),
                          alignment: Alignment.topRight,
                          child:  Text('Mar 21,01:27 PM' ,style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(74, 0, 255, 1)
                          ),)
                      )

                    ],
                  ),


                ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}
