import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/features/auth/controllers/login_controller.dart';
import 'package:ecomflutter/features/auth/screens/login/CreateNewAccount/create_new_account.dart';
import 'package:ecomflutter/features/auth/screens/login/forgot_password/forget_password.dart';
import 'package:ecomflutter/utils/constants/image_string.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:ecomflutter/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Google_icon_btn extends StatelessWidget {
  const Google_icon_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 30,
            height: 30,
            child: InkWell(
                onTap: () {},
                child: const Image(
                  image: AssetImage('assets/images/googlogo.png'),
                )))
      ],
    );
  }
}

class Sign_create_btn extends StatelessWidget {
  const Sign_create_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
       AppElevetedButton(text: 'Sign in ', onPress: (){}),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: TDeviceUtils.getScreenWidth(context),
          child: OutlinedButton(
            onPressed: (){
             HelperFunction.TNavigator(context, const CreateNewAccount());
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              'Create Account',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        )
      ],
    );
  }
}

class Remeberme_forgotpasssword extends StatelessWidget {
  const Remeberme_forgotpasssword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: onchanged(),
        ),
        Text('Remember me', style: Theme.of(context).textTheme.bodyMedium),
        Spacer(),
        TextButton(
          onPressed: (){
           HelperFunction.TNavigator(context,const ForgetPasswordsScreen());
          },
          child: Text('Forget password?',
            style: Theme.of(context).textTheme.bodySmall,),)
      ],
    );
  }
}

onchanged() {}



class HeaderLogin extends StatelessWidget {
  const HeaderLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          width: 100,
          height: 100,
          image: AssetImage(TImageAssets.logo),
          color: Colors.orange,
          alignment: Alignment.topLeft,
        ),
        Text(
          'Welcome Back',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'Discover limited unmatched choice and Box of happiness',
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}

class Or_sign_with_text extends StatelessWidget {
  const Or_sign_with_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            thickness: 1,
            indent: 60,
            endIndent: 10,
          ),
        ),
        Text(
          'Or sign in with ',
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const Flexible(
          child: Divider(
            thickness: 1,
            indent: 10,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

