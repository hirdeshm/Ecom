
import 'package:ecomflutter/features/store/views/Wiselist.dart';
import 'package:ecomflutter/features/store/views/home/home.dart';
import 'package:ecomflutter/features/store/views/shop.dart';
import 'package:ecomflutter/features/store/views/user.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
class AppBottomNavigationmenu extends StatefulWidget {
  const AppBottomNavigationmenu({super.key});

  @override
  State<AppBottomNavigationmenu> createState() => _AppBottomNavigationmenuState();
}

class _AppBottomNavigationmenuState extends State<AppBottomNavigationmenu> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationControlller());
    return Scaffold(
      bottomNavigationBar: Obx(()
        => NavigationBar(
          selectedIndex: controller.state.value,
          onDestinationSelected: (index){
            controller.state.value=index;
            print(index);},
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'user'),
          ],
        
        ),
      ),
      body: Obx(()=> controller.screen[controller.state.value]),
    );
  }
}
class NavigationControlller extends GetxController{
  final state = 0.obs;

  final screen =[const HomeMenu(),const ShopMenu(),
    const WiselistMenu(),const UserMenu(),];
}