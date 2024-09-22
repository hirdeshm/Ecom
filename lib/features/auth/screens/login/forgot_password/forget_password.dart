import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/features/auth/screens/login/forgot_password/email_varification_passsword.dart';
import 'package:ecomflutter/utils/constants/padding.dart';
import 'package:flutter/material.dart';


class ForgetPasswordsScreen extends StatefulWidget {
  const ForgetPasswordsScreen({super.key});

  @override
  State<ForgetPasswordsScreen> createState() => _ForgetPasswordsScreenState();
}

class _ForgetPasswordsScreenState extends State<ForgetPasswordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: TDefaultPadding.defaultpadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Text('Forget Password',style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: 10,),
            Text('Do not worry sometimes people can forget too ,enter your email .we will send you passsword reset '
                'link.',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: 60,),
            const Textfield_form(text: 'E-mail', prefixicon: Icon(Icons.manage_accounts,),),
            const SizedBox(height: 30,),
             AppElevetedButton(text: 'Submit',onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const EmailVarificationPassword()));},),
          ],
        ),
      ),
    );
  }
}
