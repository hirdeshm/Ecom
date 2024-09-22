import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/features/auth/screens/login/CreateNewAccount/new_email_verification.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 56),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                )),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's Create your account",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                        width: TDeviceUtils.getScreenWidth(context) / 2 - 30,
                        child: const Textfield_form(
                          text: 'First Name',
                          prefixicon: Icon(Iconsax.user),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: TDeviceUtils.getScreenWidth(context) / 2 - 30,
                        child: const Textfield_form(
                          text: 'Last Name',
                          prefixicon: Icon(Iconsax.user),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Textfield_form(
                    text: 'Username',
                    prefixicon: Icon(Iconsax.user_add),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Textfield_form(
                    text: 'E-mail',
                    prefixicon: Icon(Iconsax.search_favorite),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Textfield_form(
                    text: 'Phone number',
                    prefixicon: Icon(Iconsax.call),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Textfield_form(
                    text: 'Password',
                    prefixicon: Icon(Iconsax.password_check),
                    suffixicon: Icon(Iconsax.eye_slash),
                  ),
                  Row(children: [
                    Checkbox(
                      value: true,
                      onChanged: Onchanged(),
                    ),
                    Text('I agree to',
                        style: Theme.of(context).textTheme.labelSmall),
                    TextButton(onPressed: (){}, child: const Text('Privacy policy',style: TextStyle(color: Colors.blue),),),
                   /* Text('and',
                        style: Theme.of(context).textTheme.bodyMedium,textAlign:TextAlign.start,),
                    TextButton(onPressed: (){}, child: const Text('Privacy policy',style: TextStyle(color: Colors.blue)),),
*/
                  ]),
                  const SizedBox(height: 10),
                 AppElevetedButton(text: 'Created Account', onPress: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewEmailVerification()));
                 })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Onchanged() {}
