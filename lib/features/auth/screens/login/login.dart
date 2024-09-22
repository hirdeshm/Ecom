import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/features/auth/screens/login/login_widgets.dart';
import 'package:ecomflutter/utils/constants/padding.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TDefaultPadding.defaultpadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderLogin(),
              SizedBox(height: 24,),
              Textfield_form(text: 'E-mail', prefixicon: Icon(Iconsax.arrow_right_3)),
              SizedBox(height: 10,),
              Textfield_form(text: 'Password', prefixicon: Icon(Iconsax.password_check),suffixicon: Icon(Iconsax.eye_slash),),
              Remeberme_forgotpasssword(),
              SizedBox(height: 24 * 2,),
              Sign_create_btn(),
              SizedBox(height: 10,),
              Or_sign_with_text(),//text row
              SizedBox(height: 10,),
              Google_icon_btn()
            ],
          ),
        ),
      ),
    );
  }
}
