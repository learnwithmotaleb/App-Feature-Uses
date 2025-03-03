import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelperInterstitialAd {
  static InterstitialAd? _interstitialAd;

  static void loadAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/1033173712', // Test Ad Unit ID
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (error) {
          print('Failed to load interstitial ad: $error');
        },
      ),
    );
  }

  static void showAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.show();
      _interstitialAd = null;
      loadAd(); // Preload next ad
    }
  }
}
