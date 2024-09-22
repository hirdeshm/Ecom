import 'package:ecomflutter/features/auth/controllers/on_boarding_pagecontroller.dart';

import 'package:ecomflutter/features/auth/screens/onboarding/onboardingWidgets.dart';
import 'package:ecomflutter/utils/constants/image_string.dart';
import 'package:ecomflutter/utils/constants/padding.dart';
import 'package:ecomflutter/utils/constants/text_string.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingPagecontroller());

    final dark = TDeviceUtils.getdarkmode(context);
    return Scaffold(
      body: Padding(
        padding: TDefaultPadding.defaultpadding,
        child: Stack(
          children: [
            PageView(
              controller:controller.pageController ,
              onPageChanged: controller.updatepageindicitator,
              children: const [
                Onboardscreens(
                  headline: TTextStrings.welcomeMessage,
                  title: TTextStrings.onboardText1,
                  imageString: TImageAssets.BoardingImage1,
                ),
                Onboardscreens(
                  headline: TTextStrings.welcomeMessage,
                  title: TTextStrings.onboardText2,
                  imageString: TImageAssets.BoardingImage2,
                ),
                Onboardscreens(
                  headline: TTextStrings.welcomeMessage,
                  title: TTextStrings.sampleText3,
                  imageString: TImageAssets.BoardingImage3,
                )
              ],
            ),
            Skip_btn(controller: controller),
            Smooth_Page_indicator(controller: controller, dark: dark),
            Next_btn(controller: controller)
          ],
        ),
      ),
    );
  }
}
