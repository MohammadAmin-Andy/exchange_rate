import 'package:exchange_rate/constans/constans.dart';
import 'package:exchange_rate/data/rate_data.dart';
import 'package:exchange_rate/screens/rateScreen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:http/http.dart';
import 'package:dio/dio.dart';

class RateLoadingPage extends StatefulWidget {
  const RateLoadingPage({super.key});

  @override
  State<RateLoadingPage> createState() => _RateLoadingPageState();
}

class _RateLoadingPageState extends State<RateLoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkGreyColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Text(
                'سکه و ارز',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MH',
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 15),
              LoadingAnimationWidget.staggeredDotsWave(
                  color: darkGreenColor, size: 60)
            ],
          ),
        ),
      ),
    );
  }

  void _getdata() async {
    var responce1 = await Dio().get(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/price_dollar_rl/latest.json');
    List<Usd> usdList = responce1.data
        .map<Usd>((jsonMapObject1) => Usd.fromMapJson(jsonMapObject1))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RateScreen(usdList:usdList),
      ),
    );
    print(responce1.data);
  }
}
