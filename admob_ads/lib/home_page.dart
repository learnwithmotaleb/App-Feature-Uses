import 'package:flutter/material.dart';
import 'package:flutter_admob/ads/ads_banner.dart';
import 'package:flutter_admob/ads/interstrial_ads.dart';
import 'package:flutter_admob/ads/reward.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Admob Ads"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> BannerAdWidget()));



            }, child: Text("Banner Ads")),
            OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> InterstrialAds()));

            }, child: Text("Interstitial Ads")),
            OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RewardHomePage()));


            }, child: Text("Rewarded Ads"))
          ],
        )
      ),

    );
  }
}
