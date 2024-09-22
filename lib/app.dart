import 'package:ecomflutter/features/auth/screens/onboarding/onboarding.dart';
import 'package:ecomflutter/utils/constants/colors.dart';
import 'package:ecomflutter/utils/constants/image_string.dart';
import 'package:ecomflutter/utils/constants/text_string.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:ecomflutter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TApptheme.Lighttheme,
      darkTheme: TApptheme.Darktheme,
      home: const Onboardingscreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: [
          Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: TDeviceUtils.getScreenHeight(context)*0.15,
                  width: TDeviceUtils.getScreenHeight(context)*0.15,
                  image: const AssetImage(TImageAssets.logo),
                  alignment: Alignment.center,
                  color: Tcolors.primary,
                ),
                Text(TTextStrings.welcomeMessage,style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,)
              ],
            ),
          ),


        ],
      ),
    );
  }
}




