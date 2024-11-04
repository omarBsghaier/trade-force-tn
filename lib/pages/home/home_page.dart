import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_chart/charts/line-chart.widget.dart';
import 'package:line_chart/model/line-chart.model.dart';
import 'package:tradeforcetn/model/signal_model.dart';

import '../../service/signal_service.dart';
import '../../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Signals>? signals ;
 bool  isLoaded = false ;
  late int _activetab  ;
  void initState() {
    super.initState();
    _activetab = 0 ;
    getData() ;
  }
  getData() async {
    signals = await SignalService().getSignals() ;
    if ( signals != null ){
      setState(() {
        isLoaded = true  ;
      });
    }

  }



   List<String> home_categorie = [
     "Gainers",
     "Losers",
     "Index"
   ] ;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;


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

    Paint linePaint = Paint()
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..color = Colors.green;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child : Column(
          children: [
            Container(
              width: largeur,
              margin: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.signupButtonColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 30.0),
                    child: Text("Home", style: TextStyle(color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),),
                  ),

                  SizedBox(height: 38),
                  Container(
                    width: largeur,
                    height: 48,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45.0),
                      color: AppColors.backgroundButtonhomeColor,
                    ),

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child : Row ( children : List.generate(3, (index) {
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: _activetab == index ? ShapeDecoration(shape: StadiumBorder(),
                                gradient: LinearGradient (
                                    colors: [
                                      AppColors.signinButtonFirstColor ,
                                      AppColors.signinButtonSecondColor,
                                    ]

                                )

                            ) : ShapeDecoration(shape: StadiumBorder(), color: AppColors.backgroundButtonhomeColor ) ,

                            child :ElevatedButton(

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
                                  home_categorie[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color:  Colors.white),
                                ),
                              ),


                            ),
                          ),




                        );
                      },
                      ),
                      ),

                    ),
                  ),
                ],
              ),
            ),




            if (_activetab == 2 )
              Column(
                mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: largeur,
                      height: hauteur / 4.8,
                      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: AppColors.signupButtonColor,
                      ),
                      child: Center(child : Text('Fear and greed index' ,
                          style: TextStyle(
                            fontWeight: FontWeight.w500 ,
                            color:  Colors.white,
                            fontSize: 18 ,
                          )
                      )
                        ,)


                  ),
                  Container(
                      width: largeur,
                      height: hauteur / 4.8,
                      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: AppColors.signupButtonColor,
                      ),
                      child: Center(child : Text('Longs and shorts index' ,
                          style: TextStyle(
                            fontWeight: FontWeight.w500 ,
                            color:  Colors.white,
                            fontSize: 18 ,
                          )
                      )
                        ,)


                  ),
                ],
              )
            else if ( _activetab == 1)
              ListView(
                clipBehavior: Clip.hardEdge,
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
                    child: Row(
                      children: [
                        Padding(   padding: EdgeInsets.all( 10),
                          child:  Image.asset('images/bitcoin.png'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 5, left: 5),
                              child:Text('BTCUSDT' ,
                                style: TextStyle(
                                    color : Color.fromRGBO(181, 180, 255, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800 ),), ),

                            Padding(padding: EdgeInsets.only(bottom: 10, left: 5, right: 10),
                              child  :  Text('\$ 42.00000000',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),

                        LineChart(width: 60, height: 40, data: data, linePaint: linePaint),
                        Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),

                          child :  Container (
                            margin : EdgeInsets.symmetric(horizontal: 5, vertical:  5 ),
                            child :Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment .center,
                              children: [
                                Text("10%",style: TextStyle(
                                  fontWeight: FontWeight.w700 ,
                                  color: Colors.white ,
                                  fontSize: 18,
                                ),),
                                Icon(Icons.arrow_drop_down , color: Color.fromRGBO(181, 180, 255, 1)),

                              ],
                            ),
                          ),


                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
                    width: largeur,
                    height: hauteur/8.5 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: AppColors.backgroundButtonhomeColor,
                    ),
                    child: Row(
                      children: [
                        Padding(   padding: EdgeInsets.all( 10),
                          child:  Image.asset('images/bitcoin.png'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 5, left: 5),
                              child:Text('BTCUSDT' ,
                                style: TextStyle(
                                    color : Color.fromRGBO(181, 180, 255, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800 ),), ),

                            Padding(padding: EdgeInsets.only(bottom: 10, left: 5, right: 10),
                              child  :  Text('\$ 42.00000000',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),

                        LineChart(width: 60, height: 40, data: data, linePaint: linePaint),
                        Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),

                          child :Column(
                            children: [
                              Text("18%",style: TextStyle(
                                fontWeight: FontWeight.w700 ,
                                color: Colors.white ,
                                fontSize: 18,
                              ),),
                              Icon(Icons.arrow_drop_down , color: Color.fromRGBO(181, 180, 255, 1)),

                            ],
                          ),
                        ),



                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
                    width: largeur,
                    height: hauteur/8.5 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: AppColors.backgroundButtonhomeColor,
                    ),
                    child: Row(
                      children: [
                        Padding(   padding: EdgeInsets.all( 10),
                          child:  Image.asset('images/bitcoin.png'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 5, left: 5),
                              child:Text('BTCUSDT' ,
                                style: TextStyle(
                                    color : Color.fromRGBO(181, 180, 255, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800 ),), ),

                            Padding(padding: EdgeInsets.only(bottom: 10, left: 5, right: 10),
                              child  :  Text('\$ 42.00000000',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),

                        LineChart(width: 60, height: 40, data: data, linePaint: linePaint),
                        Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),

                          child :Column(
                            children: [
                              Text("18%",style: TextStyle(
                                fontWeight: FontWeight.w700 ,
                                color: Colors.white ,
                                fontSize: 18,
                              ),),
                              Icon(Icons.arrow_drop_down , color: Color.fromRGBO(181, 180, 255, 1)),

                            ],
                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              )
            else Visibility(
                visible: isLoaded ,
                  child:ListView.builder(
                  clipBehavior: Clip.hardEdge,
                   scrollDirection: Axis.vertical,
                     shrinkWrap: true,
                    itemCount: signals?.length,
                     itemBuilder:(context , index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0) ,
                      width: largeur,
                      height: hauteur/8.5 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: AppColors.backgroundButtonhomeColor,
                      ),
                      child: Row(
                        children: [
                          Padding(   padding: EdgeInsets.all( 10),
                            child:  Image.asset('images/bitcoin.png'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 5, left: 5),
                                child:Text('BTCUSDT' ,
                                  style: TextStyle(
                                      color : Color.fromRGBO(181, 180, 255, 1),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800 ),), ),

                              Padding(padding: EdgeInsets.only(bottom: 10, left: 5, right: 10),
                                child  :  Text(signals![index].entryPrice ,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),

                          LineChart(width: 60, height: 40, data: data, linePaint: linePaint),


                        ],
                      ),
                    );
                   } ,

              ) ,
              replacement: const Center(
                child: CircularProgressIndicator (),
              ) ,)



          ],
        ),
      )





    ) ;
  }

  } 