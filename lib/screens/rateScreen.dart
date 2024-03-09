import 'package:exchange_rate/constans/constans.dart';
import 'package:exchange_rate/data/rate_data.dart';
import 'package:flutter/material.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({super.key, required List<Usd> usdList});

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: darkGreyColor,
        appBar: AppBar(
          backgroundColor: weakGreenColor,
          centerTitle: true,
          title: Text(
            'نرخ سکه و ارز',
            style: TextStyle(
              fontFamily: 'MH',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Center(
          child: Text('سکه'),
        ),
      ),
    );
  }
}
