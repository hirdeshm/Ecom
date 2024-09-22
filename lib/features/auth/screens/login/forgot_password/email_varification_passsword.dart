
import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/features/auth/screens/login/CreateNewAccount/account_created_successfully.dart';
import 'package:ecomflutter/utils/constants/image_string.dart';
import 'package:ecomflutter/utils/constants/padding.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class EmailVarificationPassword extends StatelessWidget {
  const EmailVarificationPassword({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = TDeviceUtils.getdarkmode(context);
    return Scaffold(
      body: Padding(
        padding: TDefaultPadding.defaultpadding,
        child: SingleChildScrollView(

          child: Stack(
            children: [
              AppCrossbtn(

 dark: dark, widget: const AccountCreatedSuccessfully(),),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  const Image(
                    width: 200,
                    height: 200,
                    image: AssetImage(TImageAssets.EmailVerification),
                    alignment: Alignment.center,

                  ),
                  const SizedBox(height: 20,),
                  Text('Password Reset Email Sent',style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                  const SizedBox(height: 10,),
                  Text('Abcd@email.com',style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
                  const SizedBox(height: 10,),
                  Text('Your Account Security is Our '
                      'Priority! we have sent you a secure link'
                      ' to Safely change your Password and keep your account proctected ',style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 50,
                    width: TDeviceUtils.getScreenWidth(context),
                    child: ElevatedButton(
                      onPressed: () {

                        },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.orange,
                      ),
                      child: Text(
                        'Done',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: TDeviceUtils.getScreenWidth(context)*0.5,
                    child: TextButton(
                      onPressed: () {  },
                      child: Text('Resend email',
                          style: Theme.of(context).textTheme.titleMedium),
                    ),

                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
