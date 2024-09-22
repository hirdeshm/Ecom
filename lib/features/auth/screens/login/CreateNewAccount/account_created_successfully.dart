import 'package:ecomflutter/Homepage/app_bottom_navigation-menu.dart';
import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/utils/constants/image_string.dart';
import 'package:ecomflutter/utils/constants/padding.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class AccountCreatedSuccessfully extends StatelessWidget {
  const AccountCreatedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark =  TDeviceUtils.getdarkmode(context);
    return   const Scaffold(
      body: Padding(
        padding: TDefaultPadding.defaultpadding,
        child: SingleChildScrollView(

          child: Stack(
            children: [

              Default_boarding_screen(headline: 'Your Account Created Successfully!',
                image_string: TImageAssets.EmailVerification,
                body: 'Your Account Security is Our '
                    'Priority! we have sent you a secure link'
                    ' to Safely change your Password and keep your account proctected ',),

            ],
          ),
        ),
      ),
    );
  }
}

class Default_boarding_screen extends StatelessWidget {
  const Default_boarding_screen({
    super.key, required this.headline, required this.image_string, required this.body,
  });
final String headline,image_string,body;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50,),
        Image(
          width: 200,
          height: 200,
          image: AssetImage(image_string),
          alignment: Alignment.center,

        ),
        const SizedBox(height: 20,),
        Text(headline,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
        const SizedBox(height: 10,),
        Text(body,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
        const SizedBox(height: 30,),
        AppElevetedButton(text: 'Continue', onPress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AppBottomNavigationmenu()));
        })


      ],
    );
  }
}

