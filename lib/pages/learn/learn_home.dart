import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_chart/charts/line-chart.widget.dart';
import 'package:line_chart/model/line-chart.model.dart';
import 'package:tradeforcetn/pages/learn/detail_crypto_page.dart';

import '../../utils/colors.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override

  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  bool selected = true;
  int _activetab = 0 ;
  List<String> learn_categorie = [
    "Trading patterns",
    "Crypto projects",
  ] ;
  @override
  Widget build(BuildContext context) {
    // TODO supprimer juste pour tester

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

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea (
        child:Column (
          children : [
            Container(
              width: largeur,
              margin: EdgeInsets.only(left: 15.0 , right: 15.0 ,top: 20.0,bottom:  20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.signupButtonColor,
              ),



              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left:20 ,top: 30.0),
                    child :  Text("Learn" , style : TextStyle( color: Colors.white,fontSize: 24 ,fontWeight: FontWeight.bold ),),
                  ),


                  SizedBox(height: 38),
                  Container(
                    height: 48 ,
                    margin: EdgeInsets.only(left:8, right: 8 , bottom:  15 ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45.0),
                      color: AppColors.backgroundButtonhomeColor,
                    ),
                    child : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: List.generate(2, (index) {return GestureDetector(
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

                          child: ElevatedButton(
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
                              });},

                            child: Container(
                              alignment: Alignment.center,
                              child:  Text(
                                learn_categorie[index] ,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),) ; }
                        ,
                      ),





                      )
                      ,
                    ),
                  ),
                ],
              ),
            ),
            if ( _activetab == 0)
              ListView.separated(
                itemBuilder: (BuildContext, index){
                  return ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage("images/rectangle.png")),
                    title: Text("Head and shoulders" ,style: TextStyle(color: Color.fromRGBO(181, 180, 255, 1) ,fontSize: 18 ,fontWeight: FontWeight.w700 ), ),
                    subtitle: Text("trend line that suggests a breakdown is likely to occur. The magnitude of the breakouts or breakdowns is typically the same as the",style: TextStyle(color: Colors.white),),
                  );
                },
                separatorBuilder: (BuildContext,index)
                {
                  return Divider(height:1 ,indent: 20, color: Colors.white ,);
                },
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
              )
            else
              ListView(
                clipBehavior: Clip.hardEdge,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: () {  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailCrypto()));
                    ; },
                    child: Container(

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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("15%",style: TextStyle(
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



          ],
        ),
      ),






    ) ;
  }

}

