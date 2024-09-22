import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key, this.title, required this.showbackarrow, this.leadingicon, this.actions, this.leadingonpressd});

  final Widget ? title;
  final bool showbackarrow;
  final IconData ?leadingicon;
  final List<Widget>? actions;
  final VoidCallback? leadingonpressd;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppBar(automaticallyImplyLeading: false,
          leading: showbackarrow
              ?IconButton(onPressed: ()=>Get.back(), icon: const Icon(Iconsax.arrow_left))
              :leadingicon!=null?IconButton(onPressed: leadingonpressd, icon: Icon(leadingicon)):null
          ,title: title,
        actions: actions,
        backgroundColor: Colors.orange.withOpacity(0),

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
