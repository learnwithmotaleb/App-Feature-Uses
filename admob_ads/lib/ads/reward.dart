import 'package:flutter/material.dart';

import 'ad_helper/ads_reward.dart';

class RewardHomePage extends StatefulWidget {
  const RewardHomePage({super.key});

  @override
  State<RewardHomePage> createState() => _RewardHomePageState();
}

class _RewardHomePageState extends State<RewardHomePage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    RewardedAdHelper.loadAd();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Rewarded Ads"),
      ),
      
      body: Center(
        child: OutlinedButton(onPressed: (){
          
          RewardedAdHelper.showAd();
          setState(() {
            
          });
          
          
        }, child: Text("Show Rewarded Ads")),
      ),
      
      
    );
  }
}
