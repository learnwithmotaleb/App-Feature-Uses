import 'package:flutter/material.dart';

import 'ad_helper/ads_interstrial_helper.dart';

class InterstrialAds extends StatefulWidget {
  const InterstrialAds({super.key});

  @override
  State<InterstrialAds> createState() => _InterstrialAdsState();
}

class _InterstrialAdsState extends State<InterstrialAds> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AdHelperInterstitialAd.loadAd();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InterstitialAd"),
      ),
      body: Center(

        child: OutlinedButton(
            onPressed: (){
              AdHelperInterstitialAd.showAd();
              setState(() {

              });


            },
            child: Text("Show Interstitial Ads")

        ),
      ) ,
    );
  }
}
