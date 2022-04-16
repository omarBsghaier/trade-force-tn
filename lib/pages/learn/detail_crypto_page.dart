import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
class DetailCrypto extends StatefulWidget {
  const DetailCrypto({Key? key}) : super(key: key);

  @override
  State<DetailCrypto> createState() => _DetailCryptoState();
}

class _DetailCryptoState extends State<DetailCrypto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body :Container(
      child: LineChart(
        LineChartData(
          // read about it in the LineChartData section
        ),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      ),
    )) ;

  }
}
