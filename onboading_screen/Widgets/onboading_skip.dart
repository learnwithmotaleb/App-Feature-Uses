
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../onboading_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 20,
        right: 10,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("Skip",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ));
  }
}