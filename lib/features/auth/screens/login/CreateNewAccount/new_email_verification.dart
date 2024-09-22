import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/common_widgets/default_screen.dart';
import 'package:ecomflutter/features/auth/screens/login/CreateNewAccount/account_created_successfully.dart';
import 'package:ecomflutter/utils/constants/image_string.dart';
import 'package:ecomflutter/utils/constants/padding.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class NewEmailVerification extends StatelessWidget {
  const NewEmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark =  TDeviceUtils.getdarkmode(context);
    return Scaffold(
      body: Padding(
        padding: TDefaultPadding.defaultpadding,
        child: SingleChildScrollView(

          child: Stack(
            children: [
             /* Positioned(
                right: 1,
                child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountCreatedSuccessfully()));},
                            icon: Icon(Iconsax.close_circle,size: 30,
                  color:dark ? Colors.white: Colors.black)),
              ),*/
              AppCrossbtn(dark: dark, widget: const AccountCreatedSuccessfully()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  SizedBox(
                      width: TDeviceUtils.getScreenHeight(context),
                      height: TDeviceUtils.getScreenHeight(context) * 0.6-30,
                      child: const Image_heading_text_screen(
                          image_string: TImageAssets.Choose,
                          headline: 'Verify Your Email Address',
                          title: "abcd@email.com",
                          body: 'Congratulation your account awaited ,verify your email to start shopping'
                              'and for good experience it is suggestiable')),
                  AppElevetedButton(text: 'continue', onPress: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AccountCreatedSuccessfully()));

                  })
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}
