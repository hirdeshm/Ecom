
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
class AppElevetedButton extends StatelessWidget {
  const AppElevetedButton({
    super.key, required this.text,required this.onPress,
  });
  final String text;
 final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: TDeviceUtils.getScreenWidth(context),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.orange,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

class Textfield_form extends StatelessWidget {
  const Textfield_form({
    super.key,
    required this.text,
    required this.prefixicon,
    this.suffixicon,
  });
  final String text;
  final Icon prefixicon;
  final Icon? suffixicon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabled: true,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
        hintText: text,
        hintStyle: Theme.of(context).textTheme.titleMedium,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2, color: Colors.orange)),
      ),
    );
  }
}


class AppCrossbtn extends StatelessWidget {
  const AppCrossbtn({
    super.key, required this.dark, required this.widget,
  });

  final Widget widget;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 1,
        child: IconButton(onPressed:  (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>widget));},
            icon: Icon(Iconsax.close_circle,size: 30,
                color:dark ? Colors.white: Colors.black)));
  }
}

class AppBackbtn extends StatelessWidget {
  const AppBackbtn({
    super.key,
    required this.dark, required this.widget,
  });
 final Widget widget;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));},
        icon: Icon(Iconsax.arrow_left_2,
          color:dark ? Colors.white: Colors.black , ));
  }
}


