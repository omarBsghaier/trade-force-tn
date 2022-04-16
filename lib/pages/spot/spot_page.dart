import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_chart/charts/line-chart.widget.dart';
import 'package:line_chart/model/line-chart.model.dart';

import '../../utils/colors.dart';

class SpotPage extends StatefulWidget {
  const SpotPage({Key? key}) : super(key: key);

  @override
  State<SpotPage> createState() => _SpotPageState();
}
bool selected = true ;
class _SpotPageState extends State<SpotPage> {
  Paint linePaint = Paint()
    ..strokeWidth = 2.5
    ..style = PaintingStyle.stroke
    ..color = Colors.green;

  List<LineChartModel> data = [
    LineChartModel(amount: 300, date: DateTime(2020, 1, 1)),
    LineChartModel(amount: 200, date: DateTime(2020, 1, 2)),
    LineChartModel(amount: 300, date: DateTime(2020, 1, 3)),
    LineChartModel(amount: 500, date: DateTime(2020, 1, 4)),
    LineChartModel(amount: 800, date: DateTime(2020, 1, 5)),
    LineChartModel(amount: 200, date: DateTime(2020, 1, 6)),
    LineChartModel(amount: 120, date: DateTime(2020, 1, 7)),
    LineChartModel(amount: 140, date: DateTime(2020, 1, 8)),
    LineChartModel(amount: 110, date: DateTime(2020, 1, 9)),
    LineChartModel(amount: 250, date: DateTime(2020, 1, 10)),
    LineChartModel(amount: 390, date: DateTime(2020, 1, 11)),
    LineChartModel(amount: 1300, date: DateTime(2020, 1, 12)),
  ];
  int _activetab = 0  ;
  List<String> spot_categorie = [
    "Scalp",
    "Hold",
    "Favoirs"
  ] ;
  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:  Column (
          children : [
            Container(
              width: largeur,
              margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0,bottom:  20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.signupButtonColor,
              ),



              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left:20 ,top: 30.0),
                    child :  Text("Spot" , style : TextStyle( color: Colors.white,fontSize: 24 ,fontWeight: FontWeight.bold ),),
                  ),


                  SizedBox(height: 38),
                  Container(
                    width: largeur /1.2,
                    height: 48 ,
                    margin: EdgeInsets.only(left:14, right: 14, bottom:  10 ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45.0),
                      color: AppColors.backgroundButtonhomeColor,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children : List.generate(3, (index) {
                      return GestureDetector(
                        child :  Container(
                            margin: EdgeInsets.all(10),
                            decoration: _activetab == index ? ShapeDecoration(shape: StadiumBorder(),
                                gradient: LinearGradient (
                                    colors: [
                                      AppColors.signinButtonFirstColor ,
                                      AppColors.signinButtonSecondColor,
                                    ]

                                )

                            ) : ShapeDecoration(shape: StadiumBorder(), color: AppColors.backgroundButtonhomeColor ) ,

                          child : ElevatedButton(
                            style: ElevatedButton.styleFrom(

                              shape: StadiumBorder(),
                              // desctivate color and shadow
                              primary: _activetab == index ?Colors.transparent : AppColors.backgroundColor  ,
                              shadowColor: Colors.transparent ,
                              elevation: 0 ,

                            ),

                            onPressed: () {
                              setState(() {
                                _activetab = index ;
                              });
                            },

                            child: Container(
                              alignment: Alignment.center,
                              child:  Text(
                                spot_categorie[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )),)
                      ;}
                    ),
                    ),









                    )
                    ,
                  ),


                ],


              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
                  width: largeur,
                  height: hauteur/8.5 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: AppColors.backgroundButtonhomeColor,
                  ),
                  child: Row (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Padding(   padding: EdgeInsets.all( 10),
                        child:  Image.asset('images/bitcoin.png'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 5, left: 5),
                                child:Text('BTCUSDT' ,
                                  style: TextStyle(
                                      color : Color.fromRGBO(181, 180, 255, 1),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800 ),), ),

                              Padding(padding: EdgeInsets.only(bottom: 5, left: 5),
                                child: Text('Mar 21,01:27 PM' ,style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(74, 0, 255, 1)
                                ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.5),
                                  decoration:  ShapeDecoration(shape: StadiumBorder(), color: AppColors.backgroundColor , ) ,
                                  child:  Padding( padding: EdgeInsets.all(6), child:Text(
                                    "Low risk",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color:  Colors.white),
                                  ),)
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.5),

                                  decoration:  ShapeDecoration(shape: StadiumBorder(), color: AppColors.signinButtonSecondColor , ) ,
                                  child:  Padding( padding: EdgeInsets.all(6), child:Text(
                                    "Scalp 2.8 ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color:  Colors.white),
                                  ),)
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.5),

                                  decoration:  ShapeDecoration(shape: StadiumBorder(), color: AppColors.signinButtonFirstColor , ) ,
                                  child:  Padding( padding: EdgeInsets.all(6), child:Text(
                                    "Stop 2.6",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color:  Colors.white),
                                  ),)
                              ), // TODO minimze the code
                            ],
                          )
                        ],
                      ),
                      LineChart(width: 60, height: 40, data: data, linePaint: linePaint),
                      Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.all(10),

                        child : IconButton(
                          onPressed: () {
                            setState(() {
                              selected = !selected;
                              print(selected);
                            });
                          },
                          icon: Icon( selected == true ? Icons.star_border : Icons.star ,color: Colors.white ,),

                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ), //     ListView.builder()
            //  TODO create liste view ;
          ]
      ),





    ) ;
  }

}

