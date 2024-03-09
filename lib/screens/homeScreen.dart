import 'package:exchange_rate/constans/constans.dart';
import 'package:exchange_rate/loading/rate_loading.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/logo.png'),
              ),
              SizedBox(height: 40),
              _getrateButten(context),
              SizedBox(height: 8),
              _getcrypto()
            ],
          ),
        ),
      ),
    );
  }

  Widget _getrateButten(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: softGreenColor,
        minimumSize: Size(240, 50),
      ),
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: ((context) => RateLoadingPage()),
        //   ),
        // );
      },
      child: Text(
        'سکه و ارز',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: blackColor,
            fontFamily: 'Mh'),
      ),
    );
  }

  Widget _getcrypto() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: softGreenColor, width: 3),
        foregroundColor: softGreenColor,
        minimumSize: Size(240, 50),
      ),
      onPressed: () {},
      child: Text(
        'ارز دیجیتال',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: blackColor,
            fontFamily: 'Mh'),
      ),
    );
  }
}
