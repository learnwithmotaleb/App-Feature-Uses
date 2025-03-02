
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:widget_tutorial/onboading_screen/icons.dart';

import 'Widgets/onboading_dot_navigation.dart';
import 'Widgets/onboading_next_button.dart';
import 'Widgets/onboading_page.dart';
import 'Widgets/onboading_skip.dart';
import 'images.dart';
import 'onboading_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30,bottom: 30, left: 5,right: 5),
        child: Stack(
          children: [
            //Horizontal Scrollable Pages
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children:  [
                OnBoardingPage(
                  image: OnBoardingIcons.login,
                  title: OnboardingImage.onBoardingTitle1,
                  subtitle: OnboardingImage.onBoardingSubTitle1
                ),
                OnBoardingPage(
                    image: OnBoardingIcons.signup,
                    title: OnboardingImage.onBoardingTitle2,
                    subtitle: OnboardingImage.onBoardingSubTitle2
                ),
                OnBoardingPage(
                    image: OnboardingImage.onBoardingImage3,
                    title: OnboardingImage.onBoardingTitle3,
                    subtitle: OnboardingImage.onBoardingSubTitle3
                ),
              ],
            ),
            //skip Button
            const OnBoardingSkip(),
        
            //Dot Navigation SmoothPageIndicator
            const OnBoardingDotNavigation(),
        
            //Circular Button
            const OnBoardingNextButton()
          ],
        ),
      ),
    );
  }
}

