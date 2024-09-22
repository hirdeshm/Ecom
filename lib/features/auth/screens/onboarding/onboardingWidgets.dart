import 'package:ecomflutter/features/auth/controllers/on_boarding_pagecontroller.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardscreens extends StatelessWidget {
  const Onboardscreens({
    super.key,
    required this.headline,
    required this.title,
    required this.imageString,
  });
  final String headline;
  final String title;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            height: TDeviceUtils.getScreenHeight(context) * 0.5,
            image: AssetImage(imageString)),
        Text(
          headline,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class Next_btn extends StatelessWidget {
  const Next_btn({
    super.key,
    required this.controller,
  });

  final OnBoardingPagecontroller controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kBottomNavigationBarHeight-56,
      right: 20,
      child: ElevatedButton(

        onPressed: () {
          controller.onclicknext(context);
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(
            ),
            backgroundColor: Colors.orange
        ),
        child: const Icon(Icons.arrow_circle_right_outlined,color: Colors.black,size: 25,),
      ),
    );
  }
}








class Smooth_Page_indicator extends StatelessWidget {
  const Smooth_Page_indicator({
    super.key,
    required this.controller,
    required this.dark,
  });

  final OnBoardingPagecontroller controller;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 2,
      bottom: kBottomNavigationBarHeight-40,
      child: SmoothPageIndicator(
        onDotClicked: controller.ondotclick,
        effect: ExpandingDotsEffect(
            dotColor: dark ? Colors.white : Colors.black,
            activeDotColor: Colors.orange),
        count: 3,
        controller: controller.pageController,

      ),
    );
  }
}



class Skip_btn extends StatelessWidget {
  const Skip_btn({
    super.key,
    required this.controller,
  });

  final OnBoardingPagecontroller controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 1,
        child: OutlinedButton(
          onPressed: () {
            controller.onskip();
          },
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ));
  }
}

