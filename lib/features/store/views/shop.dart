import 'package:ecomflutter/common_widgets/producf_card.dart';
import 'package:ecomflutter/features/store/views/home/screen/widgets.dart';
import 'package:flutter/material.dart';

class ShopMenu extends StatelessWidget {
  const ShopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'Electronics',
      'Fashion',
      'Home & Garden',
      'Beauty & Health',
      'Sports & Outdoors',
      'Toys & Games',
      'Automotive',
      'Books & Media',
      'Food & Beverages',
      'Baby & Kids',
      'Pet Supplies',
      'Office Supplies',
    ];
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (_, inner) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: Colors.white70,
                    expandedHeight: 350,
                    flexibleSpace: const Shop_header(),
                    bottom: TshopTabBar(categories: categories),
                  )
                ];
              },
              body: Padding(
                padding: const EdgeInsets.all(24),
                child: TabBarView(
                  children: [
                    Container(
                      child: ListView(
                        children: [
                          const PopularShopBanner(),
                          const SizedBox(height: 10,),
                          const PopularShopBanner(shopname: 'nike',),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('You might like',style: Theme.of(context).textTheme.titleLarge,),
                              Text('view all',style: Theme.of(context).textTheme.bodyMedium,),
                            ],
                          ),
                          GridView.builder(
                            itemCount: 20,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,mainAxisExtent: 320,mainAxisSpacing: 2
                                ,crossAxisSpacing: 1),
                            itemBuilder: (_, index) => const Product_card(),)

                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: [
                          const PopularShopBanner(),
                          const SizedBox(height: 10,),
                          const PopularShopBanner(shopname: 'nike',),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('You might like',style: Theme.of(context).textTheme.titleLarge,),
                              Text('view all',style: Theme.of(context).textTheme.bodyMedium,),
                            ],
                          ),
                          GridView.builder(
                            itemCount: 20,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,mainAxisExtent: 320,mainAxisSpacing: 2
                                ,crossAxisSpacing: 1),
                            itemBuilder: (_, index) => const Product_card(),)

                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: [
                          const PopularShopBanner(),
                          const SizedBox(height: 10,),
                          const PopularShopBanner(shopname: 'nike',),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('You might like',style: Theme.of(context).textTheme.titleLarge,),
                              Text('view all',style: Theme.of(context).textTheme.bodyMedium,),
                            ],
                          ),
                          GridView.builder(
                            itemCount: 20,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,mainAxisExtent: 320,mainAxisSpacing: 2
                                ,crossAxisSpacing: 1),
                            itemBuilder: (_, index) => const Product_card(),)

                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: [
                          const PopularShopBanner(),
                          const SizedBox(height: 10,),
                          const PopularShopBanner(shopname: 'nike',),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('You might like',style: Theme.of(context).textTheme.titleLarge,),
                              Text('view all',style: Theme.of(context).textTheme.bodyMedium,),
                            ],
                          ),
                          GridView.builder(
                            itemCount: 20,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,mainAxisExtent: 320,mainAxisSpacing: 2
                                ,crossAxisSpacing: 1),
                            itemBuilder: (_, index) => const Product_card(),)

                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: [
                          const PopularShopBanner(),
                          const SizedBox(height: 10,),
                          const PopularShopBanner(shopname: 'nike',),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('You might like',style: Theme.of(context).textTheme.titleLarge,),
                              Text('view all',style: Theme.of(context).textTheme.bodyMedium,),
                            ],
                          ),
                          GridView.builder(
                            itemCount: 20,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,mainAxisExtent: 320,mainAxisSpacing: 2
                                ,crossAxisSpacing: 1),
                            itemBuilder: (_, index) => const Product_card(),)

                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}

class PopularShopBanner extends StatelessWidget {
  const PopularShopBanner(
      {super.key,
      this.shopname='shopname',
      this.shopcategory='shopcategory',
      this.shopicon=Icons.icecream_outlined,
      this.img1='assets/images/s2.jpg',
      this.img2='assets/images/s2.jpg',
      this.img3='assets/images/s2.jpg'});
  final String shopname, shopcategory, img1, img2, img3;
  final IconData shopicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Colors.black)),
      child:  Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Popular_shop_view(
                name: shopname,
                type: shopcategory,
                imageicon: shopicon),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  App_Image_Container(
                    image_string: img1,
                  ),
                  App_Image_Container(
                    image_string: img2,
                  ),
                  App_Image_Container(
                    image_string: img3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class App_Image_Container extends StatelessWidget {
  const App_Image_Container({
    super.key,
    required this.image_string,
  });
  final String image_string;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(image_string),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class TshopTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TshopTabBar({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
        color: Colors.orangeAccent,
      ),

      child: TabBar(
        padding: EdgeInsets.zero,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.blue,
        isScrollable: true,
        dividerColor: Colors.black,
        dividerHeight: 2,
        tabs: [
          for (int i = 0; i < 5; i++)
            Tab(
              child: Text(
                categories[i],
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class Shop_header extends StatelessWidget {
  const Shop_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shop:',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Home_bar_actions()
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const App_Search_bar(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Recent searched shopes',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Popular_shop_view(
                name: 'Shop Name',
                type: 'stationary',
                imageicon: Icons.icecream,
              ),
              Popular_shop_view(
                name: 'Shop Name',
                type: 'stationary',
                imageicon: Icons.icecream,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Popular_shop_view(
                name: 'Shop Name',
                type: 'stationary',
                imageicon: Icons.icecream,
              ),
              Popular_shop_view(
                name: 'Shop Name',
                type: 'stationary',
                imageicon: Icons.icecream,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Popular_shop_view extends StatelessWidget {
  const Popular_shop_view({
    super.key,
    required this.name,
    required this.type,
    required this.imageicon,
  });
  final String name, type;
  final IconData imageicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 70,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            imageicon,
            size: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                type,
                style: Theme.of(context).textTheme.labelSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
