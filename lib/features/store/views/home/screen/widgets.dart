import 'package:ecomflutter/common_widgets/app_bar.dart';
import 'package:ecomflutter/features/store/views/home/controller/home_controller.dart';
import 'package:ecomflutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';





class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.category,
  });

  final List<String> category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppAppBar(
          showbackarrow: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'it is good day for you',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                ' Hirdesh meena',
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          actions: const [Home_bar_actions()],
        ),
        const SizedBox(
          height: 25,
        ),
        const App_Search_bar(),
        const SizedBox(
          height: 25,
        ),
        category_row(category: category)
      ],
    );
  }
}

class Banner_slider extends StatelessWidget {
  const Banner_slider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 200,
          width: TDeviceUtils.getScreenWidth(context) - 12,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:
            CarouselSlider(

              items: const [
                Image(
                  image: AssetImage('assets/images/banner_imges/bp1.jpg'),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage('assets/images/banner_imges/bp2.jpg'),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage('assets/images/banner_imges/bp3.jpg'),
                  fit: BoxFit.fill,
                ),
              ],
              options: CarouselOptions(

                  viewportFraction: 1,
                  onPageChanged: (index, _) {
                    controller.updatepageindex(index);

                  }),
            ),
          ),
        ),

        Obx(()=>
            Row(
              children: [
                const SizedBox(width: 20,),
                for(int i = 0;i<=2;i++)
                  Container(
                    width: 25, height: 5,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: controller.currentpageindex==i? Colors.orange : Colors.grey,),)
              ],
            ),
        )

      ],
    );
  }
}


class Home_bar_actions extends StatelessWidget {
  const Home_bar_actions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.shopping_cart),
          color: Colors.black,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.black.withOpacity(0.8)),
            child:  const Center(
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



class App_Search_bar extends StatelessWidget {
  const App_Search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.white54.withOpacity(1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange)
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          const Icon(Iconsax.search_normal),
          const SizedBox(
            width: 30,
          ),
          Text(
            'Search in store',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

class category_row extends StatelessWidget {
  const category_row({
    super.key,
    required this.category,
  });

  final List<String> category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            'Popular categories',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (i, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: (){
                        print(index);},
                      child: Column(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle),
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/category_image/clothes-fashion-homeless-poverty-tshirt-svgrepo-com (1).png'),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              )),
                          SizedBox(
                              width:49,
                              child: Text(category[index],overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.labelLarge ,))
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
class HomeMenuBackgroung extends StatelessWidget {
  const HomeMenuBackgroung({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: TDeviceUtils.getScreenHeight(context) ,
          color: Colors.orange,
        ),
        Positioned(
          top: TDeviceUtils.getScreenHeight(context) * 0.43,
          child: Container(
            height: TDeviceUtils.getScreenHeight(context),
            width: TDeviceUtils.getScreenWidth(context),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Positioned(
          top: -100,
          left: 150,
          child: Container(
            height: 300,
            width: TDeviceUtils.getScreenWidth(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
          ),
        ),
        Positioned(
            top: 170,
            left: 150,
            child: Container(
              height: 200,
              width: TDeviceUtils.getScreenWidth(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.2)),
            ))
      ],
    );
  }
}