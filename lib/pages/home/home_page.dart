import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../../widget/LinearGradientMask.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0 ;
  void _onItemTap (int index ){
    setState(() {
      _selectedIndex = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:  Container(
        margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0,bottom:  400.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: AppColors.signupButtonColor,
        ),




        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left:20 ,top: 30.0),
              child :  Text("Home" , style : TextStyle( color: Colors.white,fontSize: 24 ,fontWeight: FontWeight.bold ),),
            ),


            SizedBox(height: 38),
            Container(
              height: 48 ,
              margin: EdgeInsets.only(left:14, right: 14),
              padding: EdgeInsets.only(top:7, bottom: 7) ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45.0),
                color: AppColors.backgroundButtonhomeColor,
              ),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(

                        backgroundColor: MaterialStateProperty.all(AppColors.ProviderButtonColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ))

                    ),
                    onPressed: () { },

                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Gainers',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  ElevatedButton(


                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) return Colors.green;
                            return AppColors.ProviderButtonColor;
                          },
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ))

                    ),
                    onPressed: () {
                      setState(() {
                      });

                    },

                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Losers',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  ElevatedButton(

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColors.ProviderButtonColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ))

                    ),
                    onPressed: () {

                    },


                    child: Container(
                      // constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Index',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                ],

              )
              ,
            )
          ],
        ),
      ),






      bottomNavigationBar: Container(

        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.only(left: 16, right: 16 , bottom: 20 ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0)),
        child: BottomNavigationBar (
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,

          backgroundColor: AppColors.iconButtonColor,
          type: BottomNavigationBarType.fixed,


          items:    [
            BottomNavigationBarItem(
              activeIcon: LinearGradientMask(child: Icon(
                Icons.home  ,
                color: Colors.white,
              )
              ),

              icon: Icon(  Icons.home , size: 30 ),
              label :  'home' ,


            ) ,
            BottomNavigationBarItem(

                activeIcon: LinearGradientMask(child: Icon(
                  Icons.home  ,
                  color: Colors.white,
                  size: 25 ,
                )
                ),




                icon: Icon( MyFlutterApp.graduation_cap),
                label: 'learn'
            ),
            BottomNavigationBarItem(

                activeIcon: LinearGradientMask(child: Icon(
                  Icons.home  ,
                  color: Colors.white,
                )
                ),
                icon: Icon (MyFlutterApp.exchange, size: 30 ),
                label: 'spot'
            ),
            BottomNavigationBarItem(
                activeIcon: LinearGradientMask(child: Icon(
                  Icons.home  ,
                  color: Colors.white,
                )
                ),
                icon: Icon( Icons.notifications_none, size: 30 ),
                label: 'notifications'
            ),
            BottomNavigationBarItem(
                activeIcon: LinearGradientMask(child: Icon(
                  Icons.home  ,
                  color: Colors.white,
                )
                ),
                icon: Icon( Icons.settings, size: 30 ),
                label :  'settings'
            ),


          ],
          currentIndex : _selectedIndex ,
          onTap: _onItemTap ,
        ),

      ),
    )  ;
  }

}