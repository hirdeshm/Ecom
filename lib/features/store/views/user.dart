import 'package:ecomflutter/common_widgets/CommonWidgets.dart';
import 'package:ecomflutter/features/store/views/profileDetail.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
class UserMenu extends StatelessWidget {
  const UserMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const User_menu_Background(),
            Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account:',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/images/man.png'),
                      ),
                      title: const Text('Hirdesh Meena'),
                      subtitle: const Text('Abcd@gmail.com'),
                      trailing: IconButton(

                        color: Colors.black, onPressed: () { Get.to(()=>const Profiledetail()); }, icon: const Icon(Icons.edit) ,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 130),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Setting:',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const User_list_tile(
                      leadingicon: Iconsax.add,
                      title: 'My Address',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon: Iconsax.card_tick,
                      title: 'My Cart',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon: Iconsax.card_tick,
                      title: 'My Order',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon:  Iconsax.card_tick,
                      title: 'Bank Account',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon:  Iconsax.card_tick,
                      title: 'My Coupons',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon:  Iconsax.card_tick,
                      title: 'Notification',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    Text(
                      'App Setting:',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const User_list_tile(
                      leadingicon:  Iconsax.card_tick,
                      title: 'My Address',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon:  Iconsax.card_tick,
                      title: 'My Address',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon:  Iconsax.card_tick,
                      title: 'My Address',
                      subtitle: 'set Shopping Delivery Address',
                    ),
                    const User_list_tile(
                      leadingicon:  Iconsax.card_tick,
                      title: 'My Address',
                      subtitle: 'set Shopping Delivery Address',
                    ),

                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: AppElevetedButton(text: 'Log Out', onPress: (){}),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class ProfileDetail {
}

class User_list_tile extends StatelessWidget {
  const User_list_tile({
    super.key,
    required this.leadingicon,
    required this.title,
    required this.subtitle,
  });
  final IconData leadingicon;
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingicon),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}

class User_menu_Background extends StatelessWidget {
  const User_menu_Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          color: Colors.orange,
        ),
        Positioned(
          right: -5,
          top: 2,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
        Positioned(
          right: -5,
          top: 2,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
        Positioned(
          top: 130,
          child: Container(
            width: TDeviceUtils.getScreenWidth(context),
            height: 400,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          ),
        )
      ],
    );
  }
}
