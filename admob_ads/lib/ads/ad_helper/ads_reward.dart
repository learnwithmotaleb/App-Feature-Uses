import 'package:google_mobile_ads/google_mobile_ads.dart';

class RewardedAdHelper {
  static RewardedAd? _rewardedAd;

  static void loadAd() {
    RewardedAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/5224354917', // Test Ad Unit ID
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          _rewardedAd = ad;
        },
        onAdFailedToLoad: (error) {
          print('Failed to load rewarded ad: $error');
        },
      ),
    );
  }

  static void showAd() {
    if (_rewardedAd != null) {
      _rewardedAd!.show(onUserEarnedReward: (ad, reward) {
        print('User earned reward: ${reward.amount}');
      });
      _rewardedAd = null;
      loadAd();
    }
  }
}
