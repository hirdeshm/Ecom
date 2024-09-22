import 'package:ecomflutter/common_widgets/producf_card.dart';
import 'package:flutter/material.dart';

class WiselistMenu extends StatelessWidget {
  const WiselistMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Wiselist',style: Theme.of(context).textTheme.titleLarge,),
                Text('view all',style: Theme.of(context).textTheme.bodyMedium,),
              ],
            ),
            GridView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,mainAxisExtent: 320,mainAxisSpacing: 2
                  ,crossAxisSpacing: 1),
              itemBuilder: (_, index) => const Product_card(),)
          ],
        ),
      ),
    );
  }
}