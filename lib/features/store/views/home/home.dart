import 'package:ecomflutter/common_widgets/producf_card.dart';
import 'package:ecomflutter/features/store/views/home/screen/widgets.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    List<String> category = [
      'shoes',
      'clothes',
      'jeans',
      'pants',
      'sport wear',
      'shirts'
    ];
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
           const HomeMenuBackgroung(),
            Header(category: category),
            Column(
              children: [
                Container(height: TDeviceUtils.getScreenHeight(context)*0.43,color: Colors.blue.withOpacity(0),),
                const Banner_slider(),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular products',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                     Spacer(),
                      Text(
                        'view all',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                    itemCount: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,mainAxisExtent: 320,mainAxisSpacing: 2
                        ,crossAxisSpacing: 1),
                    itemBuilder: (_, index) => const Product_card(),) //

              ],
            )
            //Container(color: Colors.red,)

            /* Positioned(
              top: TDeviceUtils.getScreenHeight(context) * 0.43,
              child: Container(
                height: TDeviceUtils.getScreenHeight(context),
                width: TDeviceUtils.getScreenWidth(context),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20)),
              ),
            ),*/
          /* */

              /*Banner_slider(),
              Padding(
                padding: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular products',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      'view all',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Banner_slider(),
              Padding(
                padding: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular products',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      'view all',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Banner_slider(),
              */

            ],
           // Header(category: category),
           /* Positioned(
                top: TDeviceUtils.getScreenHeight(context) * 0.43,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Banner_slider(),
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular products',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            'view all',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    Banner_slider(),
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular products',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            'view all',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    Banner_slider(),
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular products',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            'view all',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),

                  ],
                )),*/


        ),
      ),
    );
  }
}
